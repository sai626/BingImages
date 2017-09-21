//
//  TestProfileImage.swift
//  BingImages
//
//  Created by saisri on 9/21/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class TestProfileImage{
    
    var data = [MyStoryObject]()
    
    func initialize(){
        let row1 = MyStoryObject()
        row1.name = "Test 0"
        row1.url = NSURL(string: "https://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=1swxeCoemXYd9LjaeAyH-vmUcqZo7WEtZ5PlUgK1Ey0&v=1&r=https%3a%2f%2fc1.staticflickr.com%2f8%2f7694%2f17158667357_38d8a99341_n.jpg&p=DevEx,5009.1")
        data.append(row1)
        
        let row2 = MyStoryObject()
        row2.name = "Test 1"
        row2.url = NSURL(string: "https://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=YvW9k5-r59O9xGsjsLgpmWvTeh8-mf61Xz-46PieuZU&v=1&r=https%3a%2f%2fstatic.pexels.com%2fusers%2favatars%2f148853%2fmitchell-cizmas-224-medium.jpeg&p=DevEx,5015.1")
        data.append(row2)
        
        let row3 = MyStoryObject()
        row3.name = "Test 2"
        row3.url = NSURL(string: "http://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=YIcwGSG0gGzWkE2ajFqvBZlJhd5sGVUS2IHhUZciQM8&v=1&r=http%3a%2f%2fwww.publicdomainpictures.net%2fpictures%2f170000%2ft2%2fabstract-modern-3d-art.jpg&p=DevEx,5021.1")
        data.append(row3)
        
        let row4 = MyStoryObject()
        row4.name = "Test 3"
        row4.url = NSURL(string: "http://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=6P5QXRsTEzj9gBgbaS-Z_5mLytZgWX8LK_xFJK3TUdM&v=1&r=http%3a%2f%2fimages.clipshrine.com%2fdownload%2fwheel%2fmedium-Volcanic-Frame-0-42125.png&p=DevEx,5027.1")
        data.append(row4)
        
        let row5 = MyStoryObject()
        row5.name = "Test 4"
        row5.url = NSURL(string: "http://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=CZtaOCAIJrlcMbsnoyp2qvzHWlCNbW8PW1q77Igc7GU&v=1&r=http%3a%2f%2fimages.clipshrine.com%2fdownload%2fwheel%2fmedium-Volcanic-Frame-66.6-42125.png&p=DevEx,5033.1")
        data.append(row5)
        
        let row6 = MyStoryObject()
        row6.name = "Test 0"
        row6.url = NSURL(string: "https://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=1swxeCoemXYd9LjaeAyH-vmUcqZo7WEtZ5PlUgK1Ey0&v=1&r=https%3a%2f%2fc1.staticflickr.com%2f8%2f7694%2f17158667357_38d8a99341_n.jpg&p=DevEx,5009.1")
        data.append(row6)
        
        let row7 = MyStoryObject()
        row7.name = "Test 1"
        row7.url = NSURL(string: "https://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=YvW9k5-r59O9xGsjsLgpmWvTeh8-mf61Xz-46PieuZU&v=1&r=https%3a%2f%2fstatic.pexels.com%2fusers%2favatars%2f148853%2fmitchell-cizmas-224-medium.jpeg&p=DevEx,5015.1")
        data.append(row7)
        
        let row8 = MyStoryObject()
        row8.name = "Test 2"
        row8.url = NSURL(string: "http://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=YIcwGSG0gGzWkE2ajFqvBZlJhd5sGVUS2IHhUZciQM8&v=1&r=http%3a%2f%2fwww.publicdomainpictures.net%2fpictures%2f170000%2ft2%2fabstract-modern-3d-art.jpg&p=DevEx,5021.1")
        data.append(row8)
        
        let row9 = MyStoryObject()
        row9.name = "Test 3"
        row9.url = NSURL(string: "http://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=6P5QXRsTEzj9gBgbaS-Z_5mLytZgWX8LK_xFJK3TUdM&v=1&r=http%3a%2f%2fimages.clipshrine.com%2fdownload%2fwheel%2fmedium-Volcanic-Frame-0-42125.png&p=DevEx,5027.1")
        data.append(row9)
        
        let row10 = MyStoryObject()
        row10.name = "Test 4"
        row10.url = NSURL(string: "http://www.bing.com/cr?IG=1CAFD5814FB94AF39827899BB453C71B&CID=2DB655174DBC61A800AB5E144C7C60D3&rd=1&h=CZtaOCAIJrlcMbsnoyp2qvzHWlCNbW8PW1q77Igc7GU&v=1&r=http%3a%2f%2fimages.clipshrine.com%2fdownload%2fwheel%2fmedium-Volcanic-Frame-66.6-42125.png&p=DevEx,5033.1")
        data.append(row10)

    }
}
