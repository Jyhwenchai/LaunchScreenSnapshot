//
//  UIimage+LaunchScreen.swift
//  LaunchScreen
//
//  Created by 蔡志文 on 2019/10/15.
//  Copyright © 2019 蔡志文. All rights reserved.
//

import UIKit

extension UIImage {
    
    static func launchImage() -> UIImage? {
        let controller = LaunchScreenViewController()
           // 打开下面的注释就可以看到有问题的快照
//         let controller = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateInitialViewController()!
        let launchImage = UIImage.snapshot(from: controller.view)
        return launchImage
    }
    
    static func snapshot(from view: UIView) -> UIImage? {
        let size = view.bounds.size
        let scale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(size, true, scale)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
