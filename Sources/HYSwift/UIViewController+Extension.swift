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
    
    public class func topController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {

        if let nav = base as? UINavigationController {
            return topController(base: nav.visibleViewController)
        }

        if let tab = base as? UITabBarController {
            let moreNavigationController = tab.moreNavigationController

            if let top = moreNavigationController.topViewController, top.view.window != nil {
                return topController(base: top)
            } else if let selected = tab.selectedViewController {
                return topController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topController(base: presented)
        }
        return base
    }
    
    public class var navController: UINavigationController? {
        return UIApplication.shared.keyWindow?.rootViewController?.navigationController
    }
}
