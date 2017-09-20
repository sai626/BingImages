//
//  FirstViewController.swift
//  BingImages
//
//  Created by saisri on 9/18/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let data = TestData()

    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.registerNib(UINib(nibName: "ImageCell", bundle: nil), forCellReuseIdentifier: "bingCell")
        collectionView!.registerNib(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "bingCell")
        data.initialize()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (data.images.count)
    }
    /*
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 57 + data.images[indexPath.row].imageHeight
    }*/
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("bingCell", forIndexPath: indexPath) as! ImageCell
        cell.setImage(data.images[indexPath.row], index: indexPath.row)
        return cell
    }
    
    // Delegate methods
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let ht = 62 + data.images[indexPath.row].imageHeight
        print("Calculating cell size")
        return CGSize(width: UIScreen.mainScreen().bounds.width, height: ht)
    }
}

