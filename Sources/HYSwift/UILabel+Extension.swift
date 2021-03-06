//
//  UILabel+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/13.
//
import UIKit

extension UILabel {

    @objc public static func label(text: String?, fontSize : CGFloat, colorRGB : Int) -> UILabel {
        UILabel.label(text: text, font: UIFont.systemFont(ofSize: fontSize), color: UIColor.from(hex: String(colorRGB)) ?? UIColor.black)
    }

    @objc public static func label(text: String?, fontSize : CGFloat, colorRGB : Int, align : NSTextAlignment) -> UILabel {
        let view = UILabel.label(text: text, fontSize: fontSize, colorRGB: colorRGB)
        view.textAlignment = align
        return view
    }

    @objc public static func label(text: String?, font : UIFont, color : UIColor) -> UILabel {
        let view = UILabel()
        view.font = font
        view.text = text;
        view.textColor = color
        return view
    }

    @objc public static func label(text: String?, font : UIFont, color : UIColor, align : NSTextAlignment) -> UILabel {
        let view = UILabel.label(text: text, font: font, color: color)
        view.text = text;
        view.textAlignment = align
        return view
    }
    
    @objc public static func widthWith(text: String, height: CGFloat, font: UIFont?) -> CGFloat {
        return text.boundingRect(with: CGSize(width: .greatestFiniteMagnitude, height: height), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font ?? UIFont.systemFont(ofSize: UIFont.systemFontSize)], context: nil).width
    }

    @available(iOS 8.2, *)
    @objc public static func label(size: CGFloat, weight: UIFont.Weight = .regular, hex: String) -> UILabel {
        return label(text: nil, font: UIFont.systemFont(ofSize: size, weight: weight ), color: UIColor.from(hex: hex) ?? UIColor.black)
    }
    
    public func font(name: String, size: CGFloat) -> UILabel {
        font = UIFont(name: name, size: size)
        return self
    }
    
    public func systemFont(of size: CGFloat) -> UILabel {
        font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    public func font(_ font: UIFont) -> UILabel {
        self.font = font
        return self
    }
    
    public func text(_ text: String) -> UILabel {
        self.text = text
        return self
    }
    
    public func color(_ color: UIColor) -> UILabel {
        self.textColor = color
        return self
    }
    
    public func color(hex: String) -> UILabel {
        textColor = UIColor.from(hex: hex)
        return self
    }
}

