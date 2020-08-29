//
//  Chainable.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/27.
//

import Foundation
protocol Chainable {}
extension Chainable {
    public func config(_ config: (Self) -> Void) -> Self {
        config(self)
        return self
    }
}

extension NSObject: Chainable { }
