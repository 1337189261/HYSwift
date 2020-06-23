//
//  JSONUtil.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/24.
//

import Foundation
extension String {
    var dataEncoded: Data {
        return data(using: .utf8)!
    }
}
