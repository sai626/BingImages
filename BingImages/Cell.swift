//
//  Cell.swift
//  BingImages
//
//  Created by saisri on 9/26/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import Foundation
import UIKit

class Cell {
   
    static let nibImageCell = UINib(nibName: "ImageCell", bundle: nil)
    static let nibMyStoriesCell = UINib(nibName: "MyStoriesCell", bundle: nil)
    static let nibMyStoryCell = UINib(nibName: "MyStoryCell", bundle: nil)
    
    static let imageCellReuseIdentifier = "ImageCell"
    static let myStoriesCellReuseIdentifier = "MyStoriesCell"
    static let myStoryCellReuseIdentifier = "MyStoryCell"
}