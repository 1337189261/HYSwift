//
//  UIButton+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/22.
//

import UIKit

extension UIButton {
    @objc public static func button(text : String?, font : UIFont, textColor : UIColor) -> UIButton {
        let ret = UIButton()
        ret.titleLabel?.font = font
        ret.setTitle(text, for: .normal)
        ret.setTitle(text, for: .highlighted)
        ret.setTitleColor(textColor, for: .normal)
        ret.setTitleColor(textColor, for: .highlighted)
        return ret
    }
    @objc public static func button(text : String?, font : UIFont, textColor : UIColor, target : Any?, selector : Selector) -> UIButton {
        let ret = UIButton.button(text: text, font: font, textColor: textColor)
        ret.addTarget(target, action: selector, for: .touchUpInside)
        return ret
    }
    @objc public static func button(text : String?, fontSize : CGFloat, textColor : UIColor) -> UIButton {
        UIButton.button(text: text, font: UIFont.systemFont(ofSize: fontSize), textColor: textColor)
    }
    @objc public static func button(text : String?, fontSize : CGFloat, textColor : UIColor, target : Any?, selector : Selector) -> UIButton {
        UIButton.button(text: text, font: UIFont.systemFont(ofSize: fontSize), textColor: textColor, target: target, selector: selector)
    }
    @objc public static func button(image : UIImage?) -> UIButton {
        let ret = UIButton()
        ret.setImage(image, for: .normal)
        ret.setImage(image, for: .highlighted)
        return ret
    }
    @objc public static func button(image : UIImage?, target : Any?, selector : Selector) -> UIButton {
        let ret = UIButton.button(image: image)
        ret.addTarget(target, action: selector, for: .touchUpInside)
        return ret
    }
}
