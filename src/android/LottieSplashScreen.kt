package de.dustplanet.cordova.lottie

import android.R.style
import android.animation.Animator
import android.app.Dialog
import android.content.Context
import android.content.res.Configuration
import android.graphics.drawable.ColorDrawable
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.animation.AlphaAnimation
import android.view.animation.Animation
import android.webkit.WebView
import android.widget.ImageView
import com.airbnb.lottie.LottieAnimationView
import com.airbnb.lottie.LottieComposition
import com.airbnb.lottie.LottieCompositionFactory
import com.airbnb.lottie.LottieDrawable
import com.airbnb.lottie.LottieTask
import com.airbnb.lottie.RenderMode
import org.apache.cordova.CallbackContext
import org.apache.cordova.CordovaArgs
import org.apache.cordova.CordovaPlugin
import java.util.Locale

class LottieSplashScreen : CordovaPlugin() {
    private lateinit var splashDialog: Dialog
    private lateinit var animationView: LottieAnimationView
    private var animationEnded = false

    override fun pluginInitialize() {
        super.initialize(cordova, webView)
        try {
            createView()
        } catch (e: Exception) {
            Log.e(LOG_TAG, e.message!!)
            e.printStackTrace()
        }
    }

    override fun onMessage(
        id: String?,
        data: Any?,
    ): Any? {
        if ("onPageFinished" == id) {
            val autoHide = preferences.getBoolean("LottieAutoHideSplashScreen", false)
            if (autoHide) {
                destroyView()
            }
        }
        return null
    }

    override fun execute(
        action: String,
        args: CordovaArgs,
        callbackContext: CallbackContext,
    ): Boolean {
        when (action) {
            "hide" ->
                return try {
                    destroyView(callbackContext)
                    true
                } catch (e: Exception) {
                    callbackContext.error(e.message)
                    false
                }
            "show" ->
                return try {
                    createView(
                        if (args.isNull(0)) null else args.getString(0),
                        if (args.isNull(1)) null else args.getBoolean(1),
                        if (args.isNull(2)) null else args.getDouble(2),
                        if (args.isNull(3)) null else args.getDouble(3),
                        callbackContext,
                    )
                    true
                } catch (e: Exception) {
                    callbackContext.error(e.message)
                    false
                }
            "initialAnimationEnded" -> {
                callbackContext.success(animationEnded.toString())
                return true
            }
            else -> return false
        }
    }

    private fun destroyView(callbackContext: CallbackContext? = null) {
        cordova.activity.runOnUiThread {
            animationView.cancelAnimation()
            if (::splashDialog.isInitialized) {
                dismissDialog(callbackContext)
            }
        }
    }

    private fun createView(
        location: String? = null,
        remote: Boolean? = null,
        width: Double? = null,
        height: Double? = null,
        callbackContext: CallbackContext? = null,
    ) {
        if (::splashDialog.isInitialized && splashDialog.isShowing) {
            throw LottieSplashScreenAnimationAlreadyPlayingException("An animation is already playing, please first hide the current one")
        }
        cordova.activity.runOnUiThread {
            if (cordova.activity.isFinishing.not()) {
                val context = webView.context

                animationView = LottieAnimationView(context)
                val useHardwareAcceleration =
                    remote
                        ?: preferences.getBoolean("LottieEnableHardwareAcceleration", false)
                if (useHardwareAcceleration) {
                    animationView.setRenderMode(RenderMode.HARDWARE)
                }

                val remoteEnabled = remote ?: preferences.getBoolean("LottieRemoteEnabled", false)
                val animationLocation = getAnimationLocation(location)

                if (animationLocation.isBlank()) {
                    Log.e(LOG_TAG, "LottieAnimationLocation has to be configured!")
                    this.destroyView()
                    val invalidURLException = LottieSplashScreenInvalidURLException("The provided animation is invalid")
                    if (callbackContext != null) {
                        callbackContext.error(invalidURLException.message)
                        return@runOnUiThread
                    } else {
                        throw invalidURLException
                    }
                }

                createLottieComposition(remoteEnabled, context, animationLocation, callbackContext)
                configureAnimationView(context)
                calculateAnimationSize(width, height)
                splashDialog.show()
                addAnimationListeners()
                animationView.playAnimation()
                animationEnded = false

                val delay = preferences.getInteger("LottieHideTimeout", 0)
                if (delay > 0) {
                    val handler = Handler(Looper.getMainLooper())
                    handler.postDelayed({ dismissDialog() }, delay.toLong())
                }
            }
        }
    }

    private fun getAnimationLocation(location: String?): String {
        var animationLocation = location
        if (animationLocation.isNullOrBlank()) {
            animationLocation = getUIModeDependentPreference("LottieAnimationLocation")
        }
        return animationLocation
    }

    private fun createLottieComposition(
        remoteEnabled: Boolean,
        context: Context?,
        animationLocation: String,
        callbackContext: CallbackContext?,
    ) {
        val comp: LottieTask<LottieComposition>
        val cacheDisabled = preferences.getBoolean("LottieCacheDisabled", false)
        when {
            remoteEnabled -> {
                comp =
                    LottieCompositionFactory.fromUrl(
                        context,
                        animationLocation,
                        when {
                            cacheDisabled -> null
                            else -> "url_$animationLocation"
                        },
                    )
            }
            else -> {
                comp =
                    LottieCompositionFactory.fromAsset(
                        context,
                        animationLocation,
                        when {
                            cacheDisabled -> null
                            else -> "asset_$animationLocation"
                        },
                    )
                animationView.imageAssetsFolder =
                    preferences.getString(
                        "LottieImagesLocation",
                        animationLocation.substring(
                            0,
                            animationLocation.lastIndexOf('/'),
                        ),
                    )
            }
        }

        comp.addListener { animationView.setComposition(it) }.addFailureListener {
            Log.e(LOG_TAG, "Animation not loadable!")
            Log.e(LOG_TAG, Log.getStackTraceString(it))
            this.destroyView()
            if (callbackContext != null) {
                val invalidURLException = LottieSplashScreenInvalidURLException("The provided animation is invalid")
                callbackContext.error(invalidURLException.message)
            }
        }
    }

    private fun configureAnimationView(context: Context) {
        animationView.enableMergePathsForKitKatAndAbove(true)

        if (preferences.getBoolean("LottieLoopAnimation", false)) {
            animationView.repeatCount = LottieDrawable.INFINITE
        }

        animationView.scaleType =
            ImageView.ScaleType.valueOf(
                preferences
                    .getString(
                        "LottieScaleType",
                        "FIT_CENTER",
                    ).uppercase(Locale.ENGLISH),
            )

        val color =
            ColorHelper.parseColor(
                getUIModeDependentPreference(
                    "LottieBackgroundColor",
                    "#ffffff",
                ),
            )
        animationView.setBackgroundColor(color)

        val fullScreen = preferences.getBoolean("LottieFullScreen", false)
        splashDialog =
            Dialog(
                context,
                when {
                    fullScreen -> style.Theme_NoTitleBar_Fullscreen
                    else -> style.Theme_Translucent_NoTitleBar
                },
            )
        splashDialog.window?.setBackgroundDrawable(ColorDrawable(color))
        splashDialog.setContentView(animationView)
        splashDialog.setCancelable(false)
    }

    private fun calculateAnimationSize(
        width: Double? = null,
        height: Double? = null,
    ) {
        val fullScreen = preferences.getBoolean("LottieFullScreen", false)
        if (!fullScreen) {
            val relativeSize = preferences.getBoolean("LottieRelativeSize", false)
            if (relativeSize) {
                val metrics = webView.context.resources.displayMetrics
                val animationHeight =
                    (
                        metrics.heightPixels * (
                            width
                                ?: preferences.getDouble("LottieWidth", 0.2)
                        )
                    ).toInt()
                val animationWidth =
                    (
                        metrics.widthPixels * (
                            height
                                ?: preferences.getDouble("LottieHeight", 0.2)
                        )
                    ).toInt()
                splashDialog.window?.setLayout(animationHeight, animationWidth)
            } else {
                splashDialog.window?.setLayout(
                    convertPixelsToDp(
                        width
                            ?: preferences.getDouble("LottieWidth", 200.0),
                    ),
                    convertPixelsToDp(
                        height
                            ?: preferences.getDouble("LottieHeight", 200.0),
                    ),
                )
            }
        }
    }

    private fun addAnimationListeners() {
        animationView.addAnimatorListener(
            object : Animator.AnimatorListener {
                override fun onAnimationStart(animation: Animator) {
                    (webView.getView() as WebView).evaluateJavascript("document.dispatchEvent(new Event('lottieAnimationStart'))") { }
                }

                override fun onAnimationEnd(animation: Animator) {
                    (webView.getView() as WebView).evaluateJavascript("document.dispatchEvent(new Event('lottieAnimationEnd'))") { }
                    val hideAfterAnimationDone =
                        preferences.getBoolean(
                            "LottieHideAfterAnimationEnd",
                            false,
                        )
                    when {
                        hideAfterAnimationDone -> dismissDialog()
                    }
                    animationEnded = true
                }

                override fun onAnimationCancel(animation: Animator) {
                    (webView.getView() as WebView).evaluateJavascript("document.dispatchEvent(new Event('lottieAnimationCancel'))") { }
                }

                override fun onAnimationRepeat(animation: Animator) {
                    (webView.getView() as WebView).evaluateJavascript("document.dispatchEvent(new Event('lottieAnimationRepeat'))") { }
                }
            },
        )

        animationView.setOnClickListener {
            val cancelOnTap = preferences.getBoolean("LottieCancelOnTap", false)
            if (cancelOnTap) {
                animationView.cancelAnimation()
                dismissDialog()
            }
        }
    }

    private fun convertPixelsToDp(px: Double): Int = (px * webView.context.resources.displayMetrics.density).toInt()

    private fun dismissDialog(callbackContext: CallbackContext? = null) {
        val fadeDuration = preferences.getInteger("LottieFadeOutDuration", 0)
        when {
            fadeDuration > 0 -> {
                val fadeOut = AlphaAnimation(1f, 0f)
                fadeOut.duration = fadeDuration.toLong()
                animationView.animation = fadeOut
                animationView.startAnimation(fadeOut)
                fadeOut.setAnimationListener(
                    object : Animation.AnimationListener {
                        override fun onAnimationStart(animation: Animation?) {}

                        override fun onAnimationEnd(animation: Animation?) {
                            splashDialog.dismiss()
                            callbackContext?.success()
                        }

                        override fun onAnimationRepeat(animation: Animation?) {}
                    },
                )
            }
            else -> {
                splashDialog.dismiss()
                callbackContext?.success()
            }
        }
    }

    private fun getUIModeDependentPreference(
        preferenceBaseName: String,
        defaultValue: String? = "",
    ): String {
        val nightMode: Boolean =
            cordova.context.resources.configuration.uiMode and
                Configuration.UI_MODE_NIGHT_MASK == Configuration.UI_MODE_NIGHT_YES

        var preferenceValue: String
        preferenceValue =
            when {
                nightMode -> preferences.getString("""${preferenceBaseName}Dark""", defaultValue)
                else -> preferences.getString("""${preferenceBaseName}Light""", defaultValue)
            }

        if (preferenceValue.isBlank()) {
            preferenceValue = preferences.getString(preferenceBaseName, defaultValue)
        }
        return preferenceValue
    }

    companion object {
        private const val LOG_TAG = "LottieSplashScreen"
    }
}
