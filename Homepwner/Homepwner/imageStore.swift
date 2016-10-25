//
//  imageStore.swift
//  Homepwner
//
//  Created by Andre Dias on 21/10/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit

class ImageStore: NSObject {
    
    let cache: NSCache<AnyObject, AnyObject> = NSCache()
    
    func setImage(image: UIImage, forKey key: String){
        cache.setObject(image, forKey: key as AnyObject)
    }
    
    func imageForKey(key: String) -> AnyObject?{
        return cache.object(forKey: key as AnyObject)
    }
    
    func deleteImageForKey(key: String){
        cache.removeObject(forKey: key as AnyObject)
    }
}

