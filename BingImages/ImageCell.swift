//
//  ImageCell.swift
//  BingImages
//
//  Created by saisri on 9/18/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

class ImageCell: UITableViewCell {
    
    @IBOutlet weak var nameOfImage: UILabel!
    @IBOutlet weak var uploadDate: UILabel!
    @IBOutlet weak var imageViewer: UIImageView!
    var img: ImageResult?
    private let MAX_IMAGE_HEIGHT = CGFloat(200)
    var cellHeight: CGFloat!
    var request: Request?
    
    func addImage(url: NSURL) {
        request = Alamofire.request(.GET, url).responseImage {
            [weak self] response in
            /*
            debugPrint(response)
                
            print(response.request)
            print(response.response)
            debugPrint(response.result)
 */
             
            if let image = response.result.value, strongSelf = self {
                strongSelf.imageViewer.image = image
                //print("Image Loaded")
            }
 
        }
    }
    
    func setImage(img: ImageResult){
        self.img = img
        updateUI()
    }
    
    override func prepareForReuse() {
        img = nil
        nameOfImage.text = nil
        uploadDate.text = nil
        request?.cancel()
    }
    
    func updateUI(){
        nameOfImage.text = img!.name
        
        let aspectRatio = CGFloat((img?.height)!)/CGFloat((img?.width)!)
        var imageWidth = UIScreen.mainScreen().bounds.width
        var imageHeight = aspectRatio*imageWidth
        if imageHeight > MAX_IMAGE_HEIGHT {
            imageHeight = MAX_IMAGE_HEIGHT
            imageWidth = imageHeight/aspectRatio
        }
        print("Height: \(imageHeight)  Width: \(imageWidth)")
        imageViewer.frame = CGRect(x: 0, y: 0, width: imageWidth, height: imageHeight)
        cellHeight = 57 + imageHeight
        addImage(img!.url!)
    }
    
}
