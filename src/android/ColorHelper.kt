package de.dustplanet.cordova.lottie

import android.graphics.Color
import androidx.annotation.ColorInt
import androidx.annotation.Size
import android.util.Log

class ColorHelper {
    companion object {
        val LOG_TAG = "ColorHelper"
    }
}

@ColorInt
fun ColorHelper.Companion.parseColor(@Size(min = 1) colorString: String): Int {
    var xColorString: String
    if (colorString[0] == '#') {
        xColorString = colorString.substring(1)
    } else {
        xColorString = colorString
    }

    // Reverse alpha value
    if (xColorString.length == 8) {
        xColorString = xColorString.substring(6, 8) + xColorString.substring(0, 6)
    }

    var color = java.lang.Long.parseLong(xColorString, 16)

    if (xColorString.length == 6) {
        color = color or -0x1000000
    } else if (xColorString.length != 8) {
        throw IllegalArgumentException("Unknown color")
    }
    return color.toInt()
}
