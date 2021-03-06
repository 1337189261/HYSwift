//
//  SwiftUtil.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/13.
//

import Foundation
public let test = "test"

/// 根据名字得到得到一个 Swift 类
/// - Parameter className: 自定义的 Swift 类名
/// - Returns: 返回一个 Swift 类对象
public func SwiftClassFromString(_ className: String) -> AnyClass? {
    let bundleName = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
    return NSClassFromString(bundleName + "." + className)
}

public func HYLog(_ message: String, file: String = #file, method: String = #function, line: Int = #line) {
    #if DEBUG
    print("\(file)[\(line)],\n \(method):\(message)");
    #endif
}

public func HYAbstractMethod() {
    fatalError("This is an abstract method which should be implemented in subclasses")
}
