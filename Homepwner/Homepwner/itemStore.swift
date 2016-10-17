//
//  itemStore.swift
//  Homepwner
//
//  Created by Andre Dias on 17/10/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit

class ItemStore{
    
    var allItems = [Item]()
    
    func createItem() -> Item{
        
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
        
    }
    
    init(){
        for _ in 0..<10{
            createItem()
        }
    }
}
