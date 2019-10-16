//
//  AdViewController.swift
//  LaunchScreen
//
//  Created by 蔡志文 on 2019/10/15.
//  Copyright © 2019 蔡志文. All rights reserved.
//

import UIKit

class AdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let launchImage = UIImage.launchImage()
    
        let imageView = UIImageView(frame: view.bounds)
        imageView.image = launchImage
        view.addSubview(imageView)
 
    }
    

}
