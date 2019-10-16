//
//  AppDelegate.swift
//  LaunchScreen
//
//  Created by 蔡志文 on 2019/10/15.
//  Copyright © 2019 蔡志文. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let adVC = AdViewController()
        let mainVC = ViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = adVC;
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4.0) {
            self.window?.rootViewController = mainVC
        }
        
        
        return true
    }



}

