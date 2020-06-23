//
//  UIWindow+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/23.
//

import UIKit

public func setupInitial(window:inout UIWindow?, rootViewController: UIViewController, withNavigation: Bool) {
    window = UIWindow(frame: kScreenBounds)
    if withNavigation {
        window?.rootViewController = UINavigationController(rootViewController: rootViewController)
    } else {
        window?.rootViewController = rootViewController
    }
    window?.makeKeyAndVisible()
}
