//
//  UIBarButtonItem+jcBarButtonItem.swift
//  AppDemoBySwift
//
//  Created by admin on 16/3/31.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit
//给一个类添加额外方法
extension UIBarButtonItem {
    func addLeftBarButton(title:String,image:String) -> UIBarButtonItem {
        
        let buttonItem = UIButton(type: UIButtonType.Custom)
        buttonItem.setTitle(title, forState: UIControlState.Normal)
        buttonItem.setImage(UIImage(named:image), forState: UIControlState.Normal)
        buttonItem.frame = CGRectMake(0, 0, 54, 40)
        buttonItem.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 15)
        buttonItem.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 15, 0)
        buttonItem.backgroundColor = UIColor.redColor()
        
        let leftBarButton = UIBarButtonItem(customView:buttonItem)
        return leftBarButton
    }
}
