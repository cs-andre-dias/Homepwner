//
//  imageStore.swift
//  Homepwner
//
//  Created by Andre Dias on 21/10/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit

class ImageStore: NSObject {
    
    let cache = NSCache<NSString, UIImage>()
    
    func setImage(image: UIImage, forKey key: String){
        cache.setObject(image, forKey: key as NSString)
    }
    
    func imageForKey(key: String) -> UIImage?{
        return cache.object(forKey: key as NSString)
    }
    
    func deleteImageForKey(key: String){
        cache.removeObject(forKey: key as NSString)
    }
}

