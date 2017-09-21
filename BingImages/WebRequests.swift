//
//  WebRequests.swift
//  BingImages
//
//  Created by saisri on 9/21/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import Foundation
import Alamofire

class WebRequest {
    
    func downloadImage(url: NSURL, completion: (image: UIImage?)->()) -> Request{
        let request = Alamofire.request(.GET, url).responseImage {
            response in
            
            debugPrint(response)
            print(response.request)
            print(response.response)
            debugPrint(response.result)
            
            completion(image: response.result.value)
            
        }
        
        return request
    }

}