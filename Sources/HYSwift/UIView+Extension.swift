//
//  UIView+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/13.
//

import UIKit

extension UIView {
    func addShadow(color: UIColor = UIColor.black, opacity: Float = 0.16, blur: CGFloat = 8, y: CGFloat = 2) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOffset = CGSize(width: 0, height: y)
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shadowRadius = blur / 2
        layer.shadowOpacity = opacity
    }
}
