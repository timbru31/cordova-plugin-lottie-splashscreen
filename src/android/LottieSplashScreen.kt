package de.dustplanet.cordova.lottie

import android.app.Dialog
import android.os.Handler
import android.util.Log
import android.widget.ImageView
import com.airbnb.lottie.*
import org.apache.cordova.CallbackContext
import org.apache.cordova.CordovaArgs
import org.apache.cordova.CordovaPlugin
import java.lang.Exception

class LottieSplashScreen : CordovaPlugin() {

    private lateinit var splashDialog: Dialog
    private lateinit var animationView: LottieAnimationView

    override fun pluginInitialize() {
        super.initialize(cordova, webView)
        createView()
    }

    override fun onMessage(id: String?, data: Any?): Any? {
        if ("onPageFinished" == id) {
            val autoHide = preferences.getBoolean("LottieAutoHideSplashScreen", false)
            if (autoHide) {
                destroyView()
            }
        }
        return null
    }

    override fun execute(action: String, args: CordovaArgs, callbackContext: CallbackContext): Boolean {
        when (action) {
            "hide" -> return try {
                destroyView()
                callbackContext.success()
                true
            } catch (e: Exception) {
                callbackContext.error(e.message)
                false
            }
            "show" -> return try {
                createView(
                        if (args.isNull(0)) null else args.getString(0),
                        if (args.isNull(1)) null else args.getBoolean(1),
                        if (args.isNull(2)) null else args.getDouble(2),
                        if (args.isNull(3)) null else args.getDouble(3)
                )
                callbackContext.success()
                true
            } catch (e: Exception) {
                callbackContext.error(e.message)
                false
            }
            else -> return false
        }
    }

    private fun destroyView() {
        cordova.activity.runOnUiThread {
            animationView.cancelAnimation()
            if (::splashDialog.isInitialized) {
                splashDialog.dismiss()
            }
        }
    }

    private fun createView(location: String? = null, remote: Boolean? = null, width: Double? = null, height: Double? = null) {
        cordova.activity.runOnUiThread {
            val context = webView.context

            animationView = LottieAnimationView(context)
            val useHardwareAcceleration = remote
                    ?: preferences.getBoolean("LottieEnableHardwareAcceleration", false)
            if (useHardwareAcceleration) {
                animationView.useHardwareAcceleration(true)
            }

            val remoteEnabled = remote ?: preferences.getBoolean("LottieRemoteEnabled", false)
            val animationLocation = location ?: preferences.getString("LottieAnimationLocation", "")
            if (animationLocation.isNullOrBlank()) {
                Log.e(LOG_TAG, "LottieAnimationLocation has to be configured!")
                this.destroyView()
                return@runOnUiThread
            }
            val comp: LottieTask<LottieComposition>
            when {
                remoteEnabled -> comp = LottieCompositionFactory.fromUrl(context, animationLocation)
                else -> {
                    comp = LottieCompositionFactory.fromAsset(context, animationLocation)
                    animationView.imageAssetsFolder = preferences.getString("LottieImagesLocation", animationLocation.substring(0, animationLocation.lastIndexOf('/')))
                }
            }

            comp.addListener { animationView.setComposition(it) }.addFailureListener {
                Log.e(LOG_TAG, "Animation not loadable!")
                Log.e(LOG_TAG, Log.getStackTraceString(it))
                this.destroyView()
            }

            animationView.enableMergePathsForKitKatAndAbove(true)

            if (preferences.getBoolean("LottieLoopAnimation", false)) {
                animationView.repeatCount = LottieDrawable.INFINITE
            }

            animationView.scaleType = ImageView.ScaleType.valueOf(preferences.getString("LottieScaleType", "FIT_CENTER").toUpperCase())
            animationView.setBackgroundColor(ColorHelper.parseColor(preferences.getString("LottieBackgroundColor", "#ffffff")))

            splashDialog = Dialog(context, android.R.style.Theme_Translucent_NoTitleBar)
            splashDialog.setContentView(animationView)
            splashDialog.setCancelable(false)

            calculateAnimationSize(width, height)
            splashDialog.show()

            animationView.playAnimation()
            animationView.setOnClickListener {
                val cancelOnTap = preferences.getBoolean("LottieCancelOnTap", false)
                if (cancelOnTap) {
                    animationView.cancelAnimation()
                    splashDialog.dismiss()
                }
            }

            val delay = preferences.getInteger("LottieHideTimeout", 0)
            if (delay > 0) {
                val handler = Handler()
                handler.postDelayed(splashDialog::dismiss, delay.toLong() * 1000)
            }
        }
    }

    private fun calculateAnimationSize(width: Double? = null, height: Double? = null) {
        val fullScreen = preferences.getBoolean("LottieFullScreen", false)
        if (!fullScreen) {
            val relativeSize = preferences.getBoolean("LottieRelativeSize", false)
            if (relativeSize) {
                val metrics = webView.context.resources.displayMetrics
                val animationHeight = (metrics.heightPixels * (width
                        ?: preferences.getDouble("LottieWidth", 0.2))).toInt()
                val animationWidth = (metrics.widthPixels * (height
                        ?: preferences.getDouble("LottieHeight", 0.2))).toInt()
                splashDialog.window?.setLayout(animationHeight, animationWidth)
            } else {
                splashDialog.window?.setLayout(
                        convertPixelsToDp(width
                                ?: preferences.getDouble("LottieWidth", 200.0)),
                        convertPixelsToDp(height
                                ?: preferences.getDouble("LottieHeight", 200.0))
                )
            }
        }
    }

    private fun convertPixelsToDp(px: Double): Int {
        return (px * webView.context.resources.displayMetrics.density).toInt()
    }

    companion object {
        private const val LOG_TAG = "LottieSplashScreen"
    }
}
