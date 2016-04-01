//
//  DefaultSet.swift
//  AppDemoBySwift
//
//  Created by admin on 16/3/30.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit

/// APP属性
public let NavigationH: CGFloat = 64
public let AppWidth: CGFloat = UIScreen.mainScreen().bounds.size.width
public let AppHeight: CGFloat = UIScreen.mainScreen().bounds.size.height
public let MainBounds: CGRect = UIScreen.mainScreen().bounds

///APP信息
//public let APPBundleVersion :AnyObject = NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"]!

///  设备号
public let DeviceVersion :NSInteger = UIDevice.version()
///  储存当前设备版本的NSUserDefaultsKEY
public let CurrentDVVersionKey :String = "CurrentDeviceVersion"

///  userDefaults快捷创建
public var userDefaults = NSUserDefaults.standardUserDefaults()

//service
//static let CurrentDVVersionKey :String = "CurrentDeviceVersion"

struct defaultSet {
    ///  APP导航条barButtonItem文字大小
    static let SDNavItemFont: UIFont = UIFont.systemFontOfSize(16)
    ///  APP导航条titleFont文字大小
    static let SDNavTitleFont: UIFont = UIFont.systemFontOfSize(18)
    /// ViewController的背景颜色
    //    static let SDBackgroundColor: UIColor = UIColor.colorWith(255, green: 255, blue: 255, alpha: 1)
    
    //Device
    ///  储存当前设备版本的NSUserDefaultsKEY
    static let CurrentDVVersionKey :String = "CurrentDeviceVersion"
}
