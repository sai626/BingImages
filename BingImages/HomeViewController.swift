//
//  FirstViewController.swift
//  BingImages
//
//  Created by saisri on 9/18/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
    
    let data = TestData2()

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
        return (data.images.count)
    }

    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 57 + data.images[indexPath.row].imageHeight
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bingCell") as! ImageCell
        cell.setImage(data.images[indexPath.row], index: indexPath.row)
        return cell
    }
}

