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
        let oldBundelVersion : String? = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as?String
        print("oldBundelVersion == \(oldBundelVersion)")
        let currentBundelVersion : String? = APPBundleVersion as? String
        
        //判断APP是否有版本记录
        if let oldVersion = oldBundelVersion,currenVersion = currentBundelVersion {
            
            if oldVersion != currenVersion {return true}
            
        }else {
            if let version = currentBundelVersion  {
                //没有版本记录就记录并且显示引导页
                userDefaults.setObject(version,forKey: defaultSet.CurrentDVVersionKey)
                userDefaults.synchronize()
                return true
            }
        }
        return false
    }
    
    

}
