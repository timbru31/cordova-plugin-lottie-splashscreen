package de.dustplanet.cordova.lottie

import android.app.Dialog
import android.os.Handler
import android.view.View
import android.widget.ImageView
import com.airbnb.lottie.LottieAnimationView
import com.airbnb.lottie.LottieDrawable
import org.apache.cordova.CallbackContext
import org.apache.cordova.CordovaArgs
import org.apache.cordova.CordovaPlugin

class LottieSplashScreen : CordovaPlugin() {

    private var splashDialog: Dialog? = null
    private var animationView: LottieAnimationView? = null

    override fun pluginInitialize() {
        super.initialize(cordova, webView);
        createView()
    }

    override fun onMessage(id: String?, data: Any?): Any? {
        if ("onPageFinished".equals(id)) {
           val autoHide = preferences.getBoolean("LottieAutoHideSplashScreen", false)
            if (autoHide) {
                destroyView()
            }
        }
        return null
    }

    override fun execute(action: String, args: CordovaArgs, callbackContext: CallbackContext): Boolean {
        if (action.equals("hide")) {
            destroyView()
            return true
        } else if (action.equals("show")) {
            createView(
                if (args.isNull(0)) null else args.getString(0),
                if (args.isNull(1)) null else args.getBoolean(1),
                if (args.isNull(2)) null else args.getInt(2),
                if (args.isNull(3)) null else args.getInt(3)
            )
            return true
        }
        return false
    }

    private fun destroyView() {
        animationView?.cancelAnimation()
        splashDialog?.dismiss()
    }

    private fun createView(location: String? = null, remote: Boolean? = null, width: Int? = null, height: Int? = null) {
        cordova.activity.runOnUiThread {
            val context = webView.context

            animationView = LottieAnimationView(context)
            animationView!!.enableMergePathsForKitKatAndAbove(true)
            val useHardwareAcceleration = remote ?: preferences.getBoolean("LottieEnableHardwareAcceleration", false)
            if (useHardwareAcceleration) {
                animationView!!.useHardwareAcceleration(true)
            }

            val remoteEnabled = remote ?: preferences.getBoolean("LottieRemoteEnabled", false)
            val animationLocation = location ?: preferences.getString("LottieAnimationLocation", "")
            if (remoteEnabled) {
                animationView!!.setAnimationFromUrl(animationLocation)
            } else {
                animationView!!.setAnimation(animationLocation)
                animationView!!.imageAssetsFolder = preferences.getString("LottieImagesLocation", animationLocation.substring(0, animationLocation.lastIndexOf('/')))
            }

            if (preferences.getBoolean("LottieLoopAnimation", false)) {
                animationView!!.repeatCount = LottieDrawable.INFINITE
            }
            animationView!!.scaleType = ImageView.ScaleType.FIT_CENTER
            animationView!!.setBackgroundColor(ColorHelper.parseColor(preferences.getString("LottieBackgroundColor", "#ffffff")))

            splashDialog = Dialog(context, android.R.style.Theme_Translucent_NoTitleBar)
            splashDialog!!.setContentView(animationView!!)
            splashDialog!!.setCancelable(false)
            /*splashDialog!!.window.setLayout(
                convertPixelsToDp(width ?: preferences.getInteger("LottieWidth", 200), this.animationView!!.context),
                convertPixelsToDp(height ?: preferences.getInteger("LottieHeight", 200), this.animationView!!.context)
            )*/
            splashDialog!!.show()


            animationView!!.playAnimation()
            animationView!!.setOnClickListener {
                val cancelOnTap = preferences.getBoolean("LottieCancelOnTap", false)
                if (cancelOnTap) {
                    animationView!!.cancelAnimation()
                    splashDialog!!.dismiss()
                }
            }

            val delay = preferences.getInteger("LottieHideTimeout", 0)
            if (delay > 0) {
                val handler = Handler()
                handler.postDelayed(splashDialog!!::dismiss, delay.toLong() * 1000)
            }
        }
    }
}
