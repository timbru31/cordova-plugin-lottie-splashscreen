/**
 * This helper utility is inspired/based on the answers from the following StackOverflow question:
 * https://stackoverflow.com/q/24263007/1902598
 * https://stackoverflow.com/a/27203691/1902598
 * https://gist.github.com/nbasham/3b2de0566d5f716894fc
 */
extension UIColor {
    convenience init(hex: String?) {
        let hexString = hex ?? "FFFFFFFF"
        var colorString: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if colorString.hasPrefix("#") {
            colorString.remove(at: colorString.startIndex)
        }

        if colorString.count != 6, colorString.count != 8 {
            colorString = "FFFFFF"
        }

        let hasAlpha = colorString.count > 7
        if !hasAlpha {
            colorString += "FF"
        }

        var rgbValue: CUnsignedInt = 0
        Scanner(string: colorString).scanHexInt32(&rgbValue)

        self.init(
            red: CGFloat((rgbValue & 0xFF00_0000) >> 24) / 255.0,
            green: CGFloat((rgbValue & 0x00FF_0000) >> 16) / 255.0,
            blue: CGFloat((rgbValue & 0x0000_FF00) >> 8) / 255.0,
            alpha: CGFloat(rgbValue & 0x0000_00FF) / 255.0
        )
    }
}
