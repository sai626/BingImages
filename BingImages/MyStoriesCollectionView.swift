//
//  MyStoriesCollectionView.swift
//  BingImages
//
//  Created by saisri on 9/26/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import Foundation
import UIKit

class MyStoriesCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var data: [MyStoryObject]!
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Cell.myStoryCellReuseIdentifier, forIndexPath: indexPath) as! MyStoryCell
        cell.initializeCellWithData(data[indexPath.row])
        print("Initialize cell at \(indexPath.row)")
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        //let ht = 62 + data[indexPath.row].imageHeight
        //print("Calculating cell size")
        return CGSize(width: 50, height: 50)
    }
}