//
//  CityViewController.swift
//  AppDemoBySwift
//
//  Created by admin on 16/3/31.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftBarbutton = UIBarButtonItem().addLeftBarButton("北京", image: "home_down")
        self.navigationItem.leftBarButtonItem = leftBarbutton
        // Do any additional setup after loading the view.
    }

   

}
