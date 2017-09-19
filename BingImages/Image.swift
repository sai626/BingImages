//
//  Image.swift
//  BingImages
//
//  Created by saisri on 9/19/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit
import SwiftyJSON

class Image{
    
    var name: String?
    var date: NSDate?
    var width: Int?
    var height: Int?
    var url: NSURL?
    var accentColor: UIColor?
    var contentURL: NSURL?
    var thumbnailUrl: NSURL?
    var thumbnailWidth: Int?
    var thumbnailHeight: Int?
    var imageSize: Int?
    
    func initializeCellData(imageJson: JSON){
        name = imageJson["name"].string
        date = NSDate().dateFromString(imageJson["datePublished"].string)
        width = imageJson["width"].int
        height = imageJson["height"].int
        url = NSURL(string: imageJson["webSearchUrl"].stringValue)
        
        if let colorString = imageJson["accentColor"].string {
            let color = Int("0x" + colorString)!
            let red = (color >> 16) & 0xFF
            let green = (color >> 8) & 0xFF
            let blue = color & 0xFF
            accentColor = UIColor(colorLiteralRed: Float(red)/255, green: Float(green)/255, blue: Float(blue)/255, alpha: 1)
        }
        
        if let urlString = imageJson["contentUrl"].string{
            contentURL = NSURL(string: urlString)
        }
        
        if let urlString = imageJson["thumbnailUrl"].string{
            thumbnailUrl = NSURL(string: urlString)
        }
        
        thumbnailWidth = imageJson["thumbnail"]["width"].int
        thumbnailHeight = imageJson["thumbnail"]["height"].int
        
        if let sizeString = imageJson["contentSize"].string{
            let value = sizeString.characters.split(" ").map(String.init)
            imageSize = Int(value[0])
        }
    }    
}