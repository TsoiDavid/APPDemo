//
//  GeneralTool.swift
//  AppDemoBySwift
//
//  Created by admin on 16/3/31.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit

class GeneralTool: NSObject {

    class func setLaunchViewController() ->(Bool){
        //获取当前版本
        let APPBundleVersion : AnyObject? = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"]
        print("APPBundleVersion == \(APPBundleVersion)")
        
        //判断APP是否有版本记录
        
        if let version = userDefaults.objectForKey(defaultSet.CurrentDVVersionKey)  {
            
            var oldVersion :String?
            var currentVersion :String?
            
            oldVersion = version as? String
            //旧版本记录跟当前版本对比
            if let version = APPBundleVersion {currentVersion = version as? String}
            
            if let o = oldVersion,let c = currentVersion  {
                //不相同就显示引导页
                if o != c{
                    userDefaults.setObject(APPBundleVersion,forKey: defaultSet.CurrentDVVersionKey)
                    let version = userDefaults.objectForKey(defaultSet.CurrentDVVersionKey)
                    print("旧版本号为\(o),当前版本号为\(c),两者版本不一致，更新记录的version版本号为\(version)")
                    return true
                }else {
                    print("旧版本号为\(o),当前版本号为\(c),两者版本一致,无需更新版本号")
                    return false
                }
            }else {
                return false
            }
            
        }else {
            var appBundleVersion : String?
            if let version = APPBundleVersion {appBundleVersion = version as? String}
            
            if let p = appBundleVersion {
            //没有版本记录就记录并且显示引导页
            userDefaults.setObject(p,forKey: defaultSet.CurrentDVVersionKey)
            userDefaults.synchronize()
            let version = userDefaults.objectForKey(defaultSet.CurrentDVVersionKey)
                if let ver = version as? String {print("没有记录的版本号，当前版本号\(ver)将被记录,")}
            }
            return true
        }
        
    }

}
