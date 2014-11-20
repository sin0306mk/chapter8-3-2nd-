//
//  ViewController.swift
//  chapter8-3(2nd)
//
//  Created by SMB開発部 on 2014/11/19.
//  Copyright (c) 2014年 Sorimachi,corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    var fontName_array:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for fontFamilyName in UIFont.familyNames() {
            for fontName in UIFont.fontNamesForFamilyName(fontFamilyName as String) {
                fontName_array.append(fontName as String)
            }
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fontName_array.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "myCell")
        var fontName = fontName_array[indexPath.row]
        cell.textLabel.text = "ABCD abcd 012345 あいうえお"
        cell.textLabel.font = UIFont(name: fontName, size: 18)
        cell.textLabel.backgroundColor = UIColor.cyanColor()
        cell.detailTextLabel?.textColor = UIColor.brownColor()
        cell.detailTextLabel?.text = fontName
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

