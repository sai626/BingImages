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

class ImageCell: UICollectionViewCell {
    
    @IBOutlet weak var nameOfImage: UILabel!
    @IBOutlet weak var uploadDate: UILabel!
    @IBOutlet weak var imageViewer: UIImageView!
    var data: DataObject?
    
    let webRequest = WebRequest()
    var request: Request?
    
    func addImage(url: NSURL) {
        
        webRequest.downloadImage(url){
            [weak self] image in
            
            if let image = image, let strongSelf = self {
                dispatch_async(dispatch_get_main_queue()){
                    strongSelf.imageViewer.image = image
                }
            }
        }
        //print("Requesting image of index \(index!)")
        
    }
    
    func initializeCellWithData(data: DataObject){
        self.data = data
        updateUI()
    }
    
    override func prepareForReuse() {
        data = nil
        nameOfImage.text = nil
        uploadDate.text = nil
        imageViewer.image = nil
        request?.cancel()
        //print("Cancelled image at index \(index!)")
    }
    
    func updateUI(){
        nameOfImage.text = data!.name
        uploadDate.text = "Random Text"
        imageViewer.frame = CGRect(x: 0, y: 0, width: (data?.imageWidth)!, height: (data?.imageHeight)!)
        addImage(data!.url!)
    }
    
}
