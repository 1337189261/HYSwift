//
//  JSONUtil.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/24.
//

import Foundation

public func readJSON(fileName: String) -> [String: AnyObject] {
    if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
        do {
              let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
              let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
              if let jsonResult = jsonResult as? Dictionary<String, AnyObject> {
                  return jsonResult
              }
          } catch {
               print(error)
          }
    }
    return [:]
}
