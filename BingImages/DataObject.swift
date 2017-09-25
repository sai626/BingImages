//
//  Image.swift
//  BingImages
//
//  Created by saisri on 9/19/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit
import SwiftyJSON

class DataObject: NSObject {
    
    var name: String!
    var date: NSDate!
    var width: Int!
    var height: Int!
    var url: NSURL!
    var id: String!
    var accentColor: UIColor!
    var webSearchURL: NSURL?
    var thumbnailUrl: NSURL?
    var thumbnailWidth: Int?
    var thumbnailHeight: Int?
    var imageSize: Int?
    
    //private let MAX_IMAGE_HEIGHT = CGFloat(200)
    
    var imageHeight: CGFloat!{
        get{
            let aspectRatio = CGFloat(height)/CGFloat(width)
            return aspectRatio * UIScreen.mainScreen().bounds.width
        }
    }
    
    var imageWidth: CGFloat!{
        get{
            return UIScreen.mainScreen().bounds.width
        }
    }
    
    func parseJSON(imageJson: JSON){
        name = imageJson["name"].stringValue
        date = NSDate().dateFromString(imageJson["datePublished"].stringValue)
        width = imageJson["width"].intValue
        height = imageJson["height"].intValue
        url = NSURL(string: imageJson["contentUrl"].stringValue)
        id = imageJson["id"].stringValue
        //print(url.absoluteURL)
        
        if let colorString = imageJson["accentColor"].string {
            let color = Int("0x" + colorString)!
            let red = (color >> 16) & 0xFF
            let green = (color >> 8) & 0xFF
            let blue = color & 0xFF
            accentColor = UIColor(colorLiteralRed: Float(red)/255, green: Float(green)/255, blue: Float(blue)/255, alpha: 1)
        }
        
        if let urlString = imageJson["webSearchUrl"].string{
            webSearchURL = NSURL(string: urlString)
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