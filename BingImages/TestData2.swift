//
//  TestData.swift
//  BingImages
//
//  Created by saisri on 9/19/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class TestData2 {
    
    var data = [DataObject]()
    
    func initialize() {
        let row1 = DataObject()
        row1.name = "Test 0"
        row1.url = NSURL(string: "https://www.bing.com/cr?IG=A68B506BBA08471EBA36A4C1A3DAC11B&CID=204F5D0B0520609D0312560804C561F3&rd=1&h=DQQEzjYEBDuYjxvdPJ4vRwydc89tDRW1UJGzBUwjzwk&v=1&r=https%3a%2f%2fstatic.pexels.com%2fphotos%2f384248%2fpexels-photo-384248.jpeg&p=DevEx,5009.1")
        row1.height = 6000
        row1.width = 4000
        //row1.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.2, green: 0.9, blue: 0.5, alpha: 1)
        data.append(row1)
        
        let row2 = DataObject()
        row2.name = "Test 1"
        row2.url = NSURL(string: "https://www.bing.com/cr?IG=A68B506BBA08471EBA36A4C1A3DAC11B&CID=204F5D0B0520609D0312560804C561F3&rd=1&h=2dz0mTq_Uaxwb6KL54e2y2MS4I91wGI8Ok3ersl15XI&v=1&r=https%3a%2f%2fimages.pexels.com%2fphotos%2f82526%2fart-drawing-zentangle-abstract-82526.jpeg%3fw%3d940%26h%3d650%26auto%3dcompress%26cs%3dtinysrgb&p=DevEx,5015.1")
        row2.height = 650
        row2.width = 627
        //row2.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.5, green: 0.2, blue: 0.1, alpha: 1)
        data.append(row2)
        
        let row3 = DataObject()
        row3.name = "Test 2"
        row3.url = NSURL(string: "http://www.bing.com/cr?IG=A68B506BBA08471EBA36A4C1A3DAC11B&CID=204F5D0B0520609D0312560804C561F3&rd=1&h=l4hqEqTU1fkc1fC_ATjTTkyb5qagQ2uqK4rDBXEkXh4&v=1&r=http%3a%2f%2fwww.publicdomainpictures.net%2fpictures%2f120000%2fnahled%2fabstract-painting-1428360800D4D.jpg&p=DevEx,5021.1")
        row3.height = 544
        row3.width = 615
        //row3.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.33, green: 0.66, blue: 0.4, alpha: 1)
        data.append(row3)
        
        let row4 = DataObject()
        row4.name = "Test 3"
        row4.url = NSURL(string: "https://www.bing.com/cr?IG=A68B506BBA08471EBA36A4C1A3DAC11B&CID=204F5D0B0520609D0312560804C561F3&rd=1&h=T8_NIkLvRDEm1_R_5zPZUWLYlIkajHYysPI0ySeyjQc&v=1&r=https%3a%2f%2fstatic.pexels.com%2fphotos%2f285173%2fpexels-photo-285173.jpeg&p=DevEx,5027.1")
        row4.height = 3398
        row4.width = 5097
        //row4.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.4, green: 0.7, blue: 0.55, alpha: 1)
        data.append(row4)
        
        let row5 = DataObject()
        row5.name = "Test 4"
        row5.url = NSURL(string: "https://www.bing.com/cr?IG=A68B506BBA08471EBA36A4C1A3DAC11B&CID=204F5D0B0520609D0312560804C561F3&rd=1&h=VV8Rzwo6oOojgLa3dLbfqhGN5ISuoGldPQo5M_rDr3M&v=1&r=https%3a%2f%2fstatic.pexels.com%2fphotos%2f268487%2fpexels-photo-268487.jpeg&p=DevEx,5033.1")
        row5.height = 3072
        row5.width = 4608
        //row5.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.29, green: 0.05, blue: 0.35, alpha: 1)
        data.append(row5)
        
    }
    
    func addImg(number: Int){
        let img = DataObject()
        img.name = "Test" + String(number)
        img.height = 5*number
        data.append(img)
    }
}
