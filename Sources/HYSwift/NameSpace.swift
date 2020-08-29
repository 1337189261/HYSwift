//
//  NameSpace.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/26.
//

import Foundation
import UIKit
// namespace tutorial: https://twittemb.github.io/swift/generics/reactive/rxswift/pattern/name%20space/2017/11/22/versatile-namespace/
public struct NameSpaceWrapper<Base> {
    
    public var base: Base
    public init(_ base: Base) {
        self.base = base
    }
    
}

public protocol NameSpace {
    // 为什么这里需要 CompatibleType, 因为使用 Self 的话, non-final class 将无法满足协议(比如 NSObject 的 Self 为 NSObject, 但是子类的 Self 并不是 NSObject), 可以使用 extension 来提供 CompatibleType 为 Self 的默认实现(PS, associatedtype 不需要指定, 编译器可以自动推断出来)
    associatedtype CompatibleType
    var hy: NameSpaceWrapper<CompatibleType> {get}
    static var hy: NameSpaceWrapper<CompatibleType>.Type {get}
}

extension NameSpace {
    public var hy: NameSpaceWrapper<Self>{
        NameSpaceWrapper(self)
    }
    public static var hy: NameSpaceWrapper<Self>.Type {
        NameSpaceWrapper<Self>.self
    }
}

