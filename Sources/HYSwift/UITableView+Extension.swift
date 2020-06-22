//
//  UITableView+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/22.
//

import UIKit
/// UIKit 方法的简化版本
extension UITableView {
    
    public static func create() -> UITableView {
        return UITableView(frame: .zero)
    }
    
    public func register(_ cellClass: AnyClass) {
        register(cellClass, forCellReuseIdentifier: String(describing: cellClass))
    }
    
    /// 需要指定返回值类型
    public func dequeReusableCell<T: UITableViewCell>() -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self)) as! T
    }
    
    public func commonSetup(target: UITableViewDelegate & UITableViewDataSource) {
        delegate = target
        dataSource = target
        separatorStyle = .none
    }
}
