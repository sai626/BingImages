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
    
    var request: Request?
    var index: Int?
    
    func addImage(url: NSURL) {
        print("Requesting image of index \(index!)")
        request = Alamofire.request(.GET, url).responseImage {
            [weak self] response in
            
            debugPrint(response)
                
            print(response.request)
            print(response.response)
            debugPrint(response.result)
 
             
            if let image = response.result.value, strongSelf = self {
                strongSelf.imageViewer.image = image
                print("Image Loaded at index \(strongSelf.index!)")
            }
 
        }
    }
    
    func setImage(img: ImageResult, index: Int){
        self.img = img
        self.index = index
        updateUI()
    }
    
    override func prepareForReuse() {
        img = nil
        nameOfImage.text = nil
        uploadDate.text = nil
        imageViewer.image = nil
        request?.cancel()
    }
    
    func updateUI(){
        nameOfImage.text = img!.name
        
        imageViewer.frame = CGRect(x: 0, y: 0, width: (img?.imageWidth)!, height: (img?.imageHeight)!)
        addImage(img!.url!)
    }
    
}
