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
    
    @discardableResult
    public func register(_ cellClass: AnyClass) -> UITableView {
        register(cellClass, forCellReuseIdentifier: String(describing: cellClass))
        return self
    }
    
    /// 需要指定返回值类型
    @discardableResult
    public func dequeReusableCell<T: UITableViewCell>() -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self)) as! T
    }
    
    @discardableResult
    public func commonSetup() -> UITableView {
        separatorStyle = .none
        return self
    }
    
    @discardableResult
    public func set(target: UITableViewDelegate & UITableViewDataSource) -> UITableView {
        delegate = target
        dataSource = target
        return self
    }
    
    @discardableResult
    public func rowHeight(_ height: CGFloat) -> UITableView {
        rowHeight = height
        return self
    }
}
