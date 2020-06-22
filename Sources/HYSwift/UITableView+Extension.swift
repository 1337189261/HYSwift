//
//  UITableView+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/22.
//

import UIKit
/// UIKit 方法的简化版本
extension UITableView {
    
    func register(cellClass: AnyClass) {
        register(cellClass, forCellReuseIdentifier: String(describing: cellClass))
    }
    
    /// 需要指定返回值类型
    func dequeReusableCell<T: UITableViewCell>() -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self)) as! T
    }
}

extension UICollectionView {
    
    func register(cellClass: AnyClass) {
        register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
    }
    
    /// 需要指定返回值类型
    func dequeReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
}
