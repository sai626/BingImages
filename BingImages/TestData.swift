//
//  TestData.swift
//  BingImages
//
//  Created by saisri on 9/19/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class TestData {
    
    var images = [Image]()
    
    func initialize() {
        for i in 0...9 {
            addImg(i)
        }
    }
    
    func addImg(number: Int){
        let img = Image()
        img.name = "Test" + String(number)
        img.height = 5*number
        images.append(img)
    }
}
