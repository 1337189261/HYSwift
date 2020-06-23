//
//  JSONUtil.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/24.
//

import Foundation

public func readJSON(fileName: String) -> Data {
    if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
        do {
              let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
              return data
          } catch {
               print(error)
          }
    }
    return Data()
}
