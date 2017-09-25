//
//  ImageCollectionView.swift
//  BingImages
//
//  Created by saisri on 9/20/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class ImageCollectionController: UIView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var data: [DataObject]!
    
    //MARK:- DataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("bingCell", forIndexPath: indexPath) as! ImageCell
        cell.initializeCellWithData(data[indexPath.row])
        return cell
    }    
    
    //MARK:- Delegate
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let ht = 61 + data[indexPath.row].imageHeight
        //print("Calculating cell size")
        return CGSize(width: UIScreen.mainScreen().bounds.width, height: ht)
    }
}
