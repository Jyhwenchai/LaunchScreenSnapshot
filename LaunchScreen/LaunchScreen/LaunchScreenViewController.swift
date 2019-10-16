//
//  LaunchScreenViewController.swift
//  LaunchScreen
//
//  Created by 蔡志文 on 2019/10/15.
//  Copyright © 2019 蔡志文. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let controller = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateInitialViewController()!
        addChild(controller)
        view.addSubview(controller.view)
        controller.view.frame = view.bounds
        controller.didMove(toParent: self)
        
        /// 针对 iPhoneX 设备处理安全区域34间距问题
        if #available(iOS 11.0, *) {
            let isPhoneX = (UIApplication.shared.delegate as! AppDelegate).window!.safeAreaInsets.bottom > 0.0
            if isPhoneX {
                for constraint in controller.view.constraints {
                    if constraint.identifier == "bottomConstraint" {
                        constraint.constant += 34.0
                    }
                }
            }
        }
    
        
        let label = UILabel(frame: CGRect(x: 50, y: 100, width: 0, height: 0))
        label.text = "这是启动页快照"
        label.textColor = UIColor.blue
        label.sizeToFit()
        view.addSubview(label)
        
    }

    
}
