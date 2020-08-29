//
//  UIView+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/13.
//

import UIKit

extension UIView {
    public func addShadow(color: UIColor = UIColor.black, opacity: Float = 0.16, blur: CGFloat = 8, y: CGFloat = 2) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOffset = CGSize(width: 0, height: y)
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shadowRadius = blur / 2
        layer.shadowOpacity = opacity
    }
    
    @discardableResult
    public func add(subView: UIView) -> UIView {
        addSubview(subView)
        return self
    }
    
    @discardableResult
    public func backgroundColor(color: UIColor?) -> UIView {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    public func frame(_ frame: CGRect) -> UIView {
        self.frame = frame
        return self
    }
    
    @discardableResult
    public func add(to superview: UIView) -> UIView {
        superview.addSubview(self)
        return self
    }
    
    @discardableResult
    public func borderColor(_ color: UIColor) -> UIView {
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ width: CGFloat) -> UIView {
        layer.borderWidth = width
        return self
    }
    
//    @discardableResult
//    func layout(snapKitMaker: (ConstraintMaker) -> Void) -> UIView {
//        self.snp.makeConstraints { (make) in
//            snapKitMaker(make)
//        }
//        return self
//    }
}
