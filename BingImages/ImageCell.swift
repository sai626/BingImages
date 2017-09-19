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
    
    func addImage(url: NSURL) {
        Alamofire.request(.GET, url).responseImage {
            [weak self] response in
            /*
            debugPrint(response)
                
            print(response.request)
            print(response.response)
            debugPrint(response.result)
            */
            if let image = response.result.value, strongSelf = self {
                let imageView = UIImageView(image: image)
                imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
                strongSelf.addSubview(imageView)
            }
 
        }
    }
    
    func createCell(img: Image){
        nameOfImage.text = img.name
        uploadDate.text = "Date"
    }
    
    override func prepareForReuse() {
    }
}
