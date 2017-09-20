//
//  TestData.swift
//  BingImages
//
//  Created by saisri on 9/19/17.
//  Copyright © 2017 Saii. All rights reserved.
//

import UIKit

class TestData {
    
    var images = [ImageResult]()
    
    func initialize() {
        let row1 = ImageResult()
        row1.name = "Test 0"
        row1.url = NSURL(string: "http://www.bing.com/cr?IG=0BC9BA4FB1314CE2BD7449B5B8D32381&CID=0A0CAEF8C3B867871534A5FAC27866CC&rd=1&h=n-d6T2QaUiTwWu40iqD6C0BOpQuS4kupSm67whytuws&v=1&r=http%3a%2f%2fbeautifulcoolwallpapers.files.wordpress.com%2f2011%2f07%2fnature-wallpaper.jpg&p=DevEx,5009.1")
        row1.height = 768
        row1.width = 1024
        row1.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.2, green: 0.9, blue: 0.5, alpha: 1)
        images.append(row1)
        
        let row2 = ImageResult()
        row2.name = "Test 1"
        row2.url = NSURL(string: "https://www.bing.com/cr?IG=0BC9BA4FB1314CE2BD7449B5B8D32381&CID=0A0CAEF8C3B867871534A5FAC27866CC&rd=1&h=zeNsUo0YFocQe-dC3rvNj16AKe7qht4zzokSJxoo31o&v=1&r=https%3a%2f%2fwww.bing.com%2fimages%2fsearch%3fview%3ddetailv2%26FORM%3dOIIRPO%26q%3dnature%2bwallpapers%26id%3dCA4196EB999A2EF66FB4C32753012D309B1A8690%26simid%3d608047528399210683&p=DevEx,5013.1")
        row2.height = 900
        row2.width = 1600
        row2.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.5, green: 0.2, blue: 0.1, alpha: 1)
        images.append(row2)
        
        let row3 = ImageResult()
        row3.name = "Test 2"
        row3.url = NSURL(string: "https://www.bing.com/cr?IG=0BC9BA4FB1314CE2BD7449B5B8D32381&CID=0A0CAEF8C3B867871534A5FAC27866CC&rd=1&h=nkeRufacDi9xSxG5ffXS6ZmenZAa4wbwatf1nZjs-ak&v=1&r=https%3a%2f%2fwww.bing.com%2fimages%2fsearch%3fview%3ddetailv2%26FORM%3dOIIRPO%26q%3dnature%2bwallpapers%26id%3d928B20B929BAFF230EFEF4C896FE41CE9B3F8FFE%26simid%3d608014049149782010&p=DevEx,5019.1")
        row3.height = 1080
        row3.width = 1728
        row3.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.33, green: 0.66, blue: 0.4, alpha: 1)
        images.append(row3)
        
        let row4 = ImageResult()
        row4.name = "Test 3"
        row4.url = NSURL(string: "https://www.bing.com/cr?IG=0BC9BA4FB1314CE2BD7449B5B8D32381&CID=0A0CAEF8C3B867871534A5FAC27866CC&rd=1&h=J1OdgOcURNbH05VBMylY1a2LO4ZZY2PGrOkfMtOsf1k&v=1&r=https%3a%2f%2fwww.bing.com%2fimages%2fsearch%3fview%3ddetailv2%26FORM%3dOIIRPO%26q%3dnature%2bwallpapers%26id%3d6A35C38FC05270D130ACDA5A8689632A22C9E8B9%26simid%3d608036254089350113&p=DevEx,5025.1")
        row4.height = 900
        row4.width = 1600
        row4.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.4, green: 0.7, blue: 0.55, alpha: 1)
        images.append(row4)
        
        let row5 = ImageResult()
        row5.name = "Test 4"
        row5.url = NSURL(string: "https://www.bing.com/cr?IG=0BC9BA4FB1314CE2BD7449B5B8D32381&CID=0A0CAEF8C3B867871534A5FAC27866CC&rd=1&h=a83Fq-a74Osnv1l-bVgM0F8Z4YT5rJjNv9kxO3JtwOM&v=1&r=https%3a%2f%2fwww.bing.com%2fimages%2fsearch%3fview%3ddetailv2%26FORM%3dOIIRPO%26q%3dnature%2bwallpapers%26id%3d3B5ABF4477C69727AF7E4CAE8D8D4E40E175565D%26simid%3d607994133362510166&p=DevEx,5031.1")
        row5.height = 1440
        row5.width = 1920
        row5.imageSizeCalc()
        row1.accentColor = UIColor(red: 0.29, green: 0.05, blue: 0.35, alpha: 1)
        images.append(row5)
        
    }
    
    func addImg(number: Int){
        let img = ImageResult()
        img.name = "Test" + String(number)
        img.height = 5*number
        images.append(img)
    }
}
