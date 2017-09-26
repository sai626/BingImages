//
//  MyStoriesCell.swift
//  BingImages
//
//  Created by saisri on 9/25/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import Foundation
import UIKit

class MyStoriesCell: UICollectionViewCell {
    
    @IBOutlet weak var myStories: UICollectionView!
    let myStoriesCollectionController = MyStoriesCollection()
    let profileData = TestProfileImage()
    
    func initializeMyStoriesCell(){
        print("Initializing myStoriesCell")
        
        profileData.initialize()
        myStories.registerNib(Cell.nibMyStoryCell, forCellWithReuseIdentifier: Cell.myStoryCellReuseIdentifier)
        myStoriesCollectionController.data = profileData.data
        myStories.dataSource = myStoriesCollectionController
        myStories.delegate = myStoriesCollectionController
        
    }
}