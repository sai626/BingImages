//
//  NSDate+stringParse.swift
//  BingImages
//
//  Created by saisri on 9/19/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import Foundation

extension NSDate {
    func dateFromString(date: String?) -> NSDate? {
        
        if let date = date {
            let formatter = NSDateFormatter()
            let locale = NSLocale(localeIdentifier: "en_US_POSIX")
            
            formatter.locale = locale
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
            
            return formatter.dateFromString(date)!
        }else{
            return nil
        }
        
    }
}
