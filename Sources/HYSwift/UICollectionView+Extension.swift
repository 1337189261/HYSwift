//
//  UICollectionView+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/23.
//

import UIKit

extension UICollectionView {
    
    public func register(_ cellClass: AnyClass) {
        register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
    }
    
    /// 需要指定返回值类型
    public func dequeReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    public func commonSetup(target: UICollectionViewDelegate & UICollectionViewDataSource) {
        delegate = target
        dataSource = target
        backgroundColor = .white
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    public var flowLayout: UICollectionViewFlowLayout {
        return collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    public var minimumInteritemSpacing: CGFloat {
        get {
            return flowLayout.minimumLineSpacing
        }
        set {
            flowLayout.minimumLineSpacing = newValue
        }
    }
    
    public var itemSize: CGSize {
        get {
            return flowLayout.itemSize
        }
        set {
            flowLayout.itemSize = newValue
        }
    }
    
    public var scrollDirection: UICollectionView.ScrollDirection {
        get {
            return flowLayout.scrollDirection
        }
        set {
            flowLayout.scrollDirection = newValue
        }
    }
    
}
