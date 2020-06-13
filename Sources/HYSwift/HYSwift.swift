import UIKit

let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height

public class HYSwift {
    
    /// Convert a 6 digit hexadecimal string into a UIColor instance
    /// - Parameters:
    ///   - hex: 6 digit hexadecimal string may or may not start with #, eg: "ff0000", "#00ff00"
    ///   - alpha: a value between 0 ~ 1.0
    /// - Returns: a UIColor instance
    public static func colorFrom(hex: String, alpha: CGFloat = 1) -> UIColor? {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) { cString.removeFirst() }
        if ((cString.count) != 6) {
          return nil
        }
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        return UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
}
