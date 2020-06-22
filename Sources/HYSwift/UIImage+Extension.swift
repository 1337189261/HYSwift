//
//  UIImage+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/23.
//

import UIKit

extension UIImage {
    
    public convenience init(color: UIColor, size: CGSize) {
       UIGraphicsBeginImageContextWithOptions(size, false, 0)
       
       color.setFill()
       UIBezierPath(rect: CGRect(origin: CGPoint.zero, size: size)).fill()
       
       let image = UIGraphicsGetImageFromCurrentImageContext()
       UIGraphicsEndImageContext()

       self.init(cgImage: image!.cgImage!)
   }
    
}
