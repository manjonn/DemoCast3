//
//  ViewController.swift
//  DemoCast3
//
//  Created by Manjula Jonnalagadda on 3/21/15.
//  Copyright (c) 2015 Manjula Jonnalagadda. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    let items:[String]=["To Do List 1","To Do List 2","To Do List 3","To Do List 4","To Do List 5"]
    let cellIdentifier="cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell?=tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as UITableViewCell?
        if cell==nil{
            cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
        }
        cell?.textLabel?.text=items[indexPath.row]
        return cell!
    }


}

