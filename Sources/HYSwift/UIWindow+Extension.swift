//
//  UIWindow+Extension.swift
//  HYSwift
//
//  Created by 陈浩宇 on 2020/6/23.
//

import UIKit

public func setupInitial(window:inout UIWindow?, rootViewController: UIViewController) {
    window = UIWindow(frame: kScreenBounds)
    window?.rootViewController = rootViewController
    window?.makeKeyAndVisible()
}
