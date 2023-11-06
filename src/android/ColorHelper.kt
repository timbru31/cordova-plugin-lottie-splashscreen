package de.dustplanet.cordova.lottie

import androidx.annotation.ColorInt
import androidx.annotation.Size
import java.lang.Long.parseLong

class ColorHelper {
    companion object {
        const val LOG_TAG = "ColorHelper"
    }
}

@ColorInt
fun ColorHelper.Companion.parseColor(
    @Size(min = 1) colorString: String,
): Int {
    var xColorString =
        when {
            colorString[0] == '#' -> colorString.substring(1)
            else -> colorString
        }

    // Reverse alpha value
    if (xColorString.length == 8) {
        xColorString = xColorString.substring(6, 8) + xColorString.substring(0, 6)
    }

    var color = parseLong(xColorString, 16)

    when {
        xColorString.length == 6 -> color = color or -0x1000000
        xColorString.length != 8 -> throw IllegalArgumentException("Unknown color")
    }
    return color.toInt()
}
