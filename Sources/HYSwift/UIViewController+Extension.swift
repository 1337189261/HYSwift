//
//  UIViewController+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/13.
//

import UIKit

extension UIViewController {
    /// 获得当前 vc 上方状态栏和导航栏的高度
    public var topbarHeight: CGFloat {
        if #available(iOS 13.0, *) {
            return (view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0) +
                (self.navigationController?.navigationBar.frame.height ?? 0.0)
        } else {
            let topBarHeight = UIApplication.shared.statusBarFrame.size.height +
            (self.navigationController?.navigationBar.frame.height ?? 0.0)
            return topBarHeight
        }
    }
    
    /// 获得当前 vc 下方 tabbar 控制器的高度
    public var bottombarHeight: CGFloat {
        return tabBarController?.view.frame.height ?? 0
    }
}
