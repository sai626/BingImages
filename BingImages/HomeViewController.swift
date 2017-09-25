//
//  File.swift
//  BingImages
//
//  Created by saisri on 9/20/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let testData = TestData2()
    let profileData = TestProfileImage()
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var myStoriesCollectionView: UICollectionView!
    
    let imageCollectionController = ImageCollectionController()
    let myStoriesCollectionController = MyStoriesCollectionController()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Memory Warning")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testData.initialize()
        profileData.initialize()
        
        imageCollectionView.registerNib(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "bingCell")
        imageCollectionController.data = testData.data
        imageCollectionView.dataSource = imageCollectionController
        imageCollectionView.delegate = imageCollectionController
        
        myStoriesCollectionView.registerNib(UINib(nibName: "MyStoryCell",bundle: nil), forCellWithReuseIdentifier: "storyCell")
        myStoriesCollectionController.data = profileData.data
        myStoriesCollectionView.dataSource = myStoriesCollectionController
        myStoriesCollectionView.delegate = myStoriesCollectionController
        
        let edgeInsets = UIEdgeInsetsMake(-50, 0, 0, 0)
        imageCollectionView.contentInset = edgeInsets
        imageCollectionView.scrollIndicatorInsets = edgeInsets
    }
    
}
