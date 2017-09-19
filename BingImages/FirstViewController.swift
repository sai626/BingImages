//
//  FirstViewController.swift
//  BingImages
//
//  Created by saisri on 9/18/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    
    let data = TestData()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerNib(UINib(nibName: "ImageCell", bundle: nil), forCellReuseIdentifier: "bingCell")
        data.initialize()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("No of Items \(data.images.count)")
        return (data.images.count)
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(67 + data.images[indexPath.row].height!)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bingCell", forIndexPath: indexPath) as! ImageCell
        cell.createCell(data.images[indexPath.row])
        print("Cell \(indexPath.row)")
        return cell
    }
}

