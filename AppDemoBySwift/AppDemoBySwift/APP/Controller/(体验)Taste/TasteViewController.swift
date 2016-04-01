//
//  TasteViewController.swift
//  AppDemoBySwift
//
//  Created by admin on 16/3/30.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit

class TasteViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let TasteTableViewCellID = "TasteTableViewCellID"
        let tasteTableViewCell = tableView.dequeueReusableCellWithIdentifier(TasteTableViewCellID, forIndexPath: indexPath) as! TasteTableViewCell
        
        return tasteTableViewCell
    }
    

}
