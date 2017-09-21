//
//  MyStoryCell.swift
//  BingImages
//
//  Created by saisri on 9/21/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit
import Alamofire

class MyStoryCell: UICollectionViewCell {
    
    @IBOutlet weak var profile: UIImageView!
    
    var data: MyStoryObject?
    
    let webRequest = WebRequest()
    var request: Request?
    
    func addImage(url: NSURL) {
        
        webRequest.downloadImage(url){
            [weak self] image in
            
            if let image = image, let strongSelf = self {
                dispatch_async(dispatch_get_main_queue()){
                    strongSelf.profile.image = image
                }
            }
        }
        //print("Requesting image of index \(index!)")
        
    }
    
    func initializeCellWithData(data: MyStoryObject){
        self.data = data
        updateUI()
    }
    
    override func prepareForReuse() {
        data = nil
        profile.image = nil
        request?.cancel()
        //print("Cancelled image at index \(index!)")
    }
    
    func updateUI(){
        //profile.frame = CGRect(x: 0, y: 0, width: (data?.imageWidth)!, height: (data?.imageHeight)!)
        profile.layer.borderWidth=1.0
        profile.layer.masksToBounds = false
        profile.layer.borderColor = UIColor.whiteColor().CGColor
        profile.layer.cornerRadius = profile.frame.size.height/2
        profile.clipsToBounds = true
        addImage(data!.url!)
    }

}