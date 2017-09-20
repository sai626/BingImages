//
//  FirstViewController.swift
//  BingImages
//
//  Created by saisri on 9/18/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
    
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
        return (data.images.count)
    }

    /*
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        print("Cell height \(indexPath.row)")
        return 257
    }
 */

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bingCell", forIndexPath: indexPath) as! ImageCell
        cell.setImage(data.images[indexPath.row])
        return cell
    }
}

