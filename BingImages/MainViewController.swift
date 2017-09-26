//
//  File.swift
//  BingImages
//
//  Created by saisri on 9/20/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class MainViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let testData = TestData2()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Memory Warning")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testData.initialize()
        collectionView?.registerNib(Cell.nibImageCell, forCellWithReuseIdentifier: Cell.imageCellReuseIdentifier)
        collectionView?.registerNib(Cell.nibMyStoriesCell , forCellWithReuseIdentifier: Cell.myStoriesCellReuseIdentifier)
        /*
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(MainViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
 */
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return testData.data.count
        }
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Cell.myStoriesCellReuseIdentifier, forIndexPath: indexPath) as! MyStoriesCell
            cell.initializeMyStoriesCell()
            /*
            let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(MainViewController.cellTapped(_:)))
            tapRecognizer.numberOfTapsRequired = 1
            cell.addGestureRecognizer(tapRecognizer)
            */
            return cell
        }else {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Cell.imageCellReuseIdentifier, forIndexPath: indexPath) as! ImageCell
            cell.initializeCellWithData(testData.data[indexPath.row])
            return cell
        }
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        //print("Size Called \(indexPath.section)")
        if indexPath.section == 0 {
            return CGSize(width: UIScreen.mainScreen().bounds.width, height: 60)
        }else{
            let ht = 61 + testData.data[indexPath.row].imageHeight
            //print("Calculating cell size")
            return CGSize(width: UIScreen.mainScreen().bounds.width, height: ht)
        }
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        print(indexPath.row)
    }
    
    func cellTapped(view : UIView){
        print("Tapped")
    }
}
