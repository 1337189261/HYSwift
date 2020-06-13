//
//  SwiftUtil.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/13.
//

import Foundation


/// 根据名字得到得到一个 Swift 类
/// - Parameter className: 自定义的 Swift 类名
/// - Returns: 返回一个 Swift 类对象
public func SwiftClassFromString(_ className: String) -> AnyClass? {
    let bundleName = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
    return NSClassFromString(bundleName + "." + className)
}
