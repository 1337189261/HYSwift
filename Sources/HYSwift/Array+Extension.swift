//
//  Array+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/21.
//

import Foundation

extension Array where Element: Collection {
    
    var row: Int {
        return count
    }
    
    var column: Int? {
        if isEmpty {
            return nil
        }
        return self[0].count
    }
}
