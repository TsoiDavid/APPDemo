//
//  LaunchViewController.swift
//  AppDemoBySwift
//
//  Created by admin on 16/3/30.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    private let bgimageView = UIImageView(frame: MainBounds)
    private let enter : UIButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.setUI()
        
        
        // Do any additional setup after loading the view.
    }
    
    func setUI() {
        /*
         第一种方法为常见方法，利用它可以方便加载资源图片。用imageNamed的方式加载时，会把图像数据根据它的名字缓存在系统内存中，以提高imageNamed方法获得相同图片的image对象的性能。即使生成的对象被 autoReleasePool释放了，这份缓存也不释放。而且没有明确的释放方法。如果图像比较大，或者图像比较多，用这种方式会消耗很大的内存。
         .用imageNamed方法
         第二种方法加载的图片是不会缓存的。得到的对象时autoRelease的，当autoReleasePool释放时才释放。
         .用 imageWithContentsOfFile 方法
         */
        
        var imageName :String?
        switch AppWidth {
        case 375:
            imageName = NSBundle.mainBundle().pathForResource("fourpage-375w-667h@2x", ofType: "jpg")
        case 414:
            imageName = NSBundle.mainBundle().pathForResource("fourpage-414w-736h@3x", ofType: "jpg")
        case 568:
            imageName = NSBundle.mainBundle().pathForResource("fourpage-568h@2x", ofType: "jpg")
        default:
            imageName = NSBundle.mainBundle().pathForResource("fourpage@2x", ofType: "jpg")
        }
        
        bgimageView.image = UIImage(contentsOfFile: imageName!)
        self.view.addSubview(bgimageView)
        
        let enterW : CGFloat = AppWidth * 0.4
        let enterH : CGFloat = 40
        let enterX : CGFloat = (AppWidth - enterW)/2
        let enterY : CGFloat = AppHeight - 50
        enter.frame = CGRectMake(enterX, enterY, enterW, enterH)
        enter.setBackgroundImage(UIImage(named:"signin_2"), forState: UIControlState.Normal)
        enter.setTitle("开始进入", forState: UIControlState.Normal)
        enter.addTarget(self, action:#selector(LaunchViewController.enterAction), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(enter)
        
    }
    func enterAction() {
     
        let cvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("CityView")
        let nav = UINavigationController(rootViewController: cvc)
        self.presentViewController(nav, animated: true, completion: nil)
        
        let tabbar = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! JCTabbarController
        let keyWindow = UIApplication.sharedApplication().keyWindow
        keyWindow?.rootViewController = tabbar

    }
    
    override func viewDidDisappear(animated: Bool) {
     
        
    }
}
