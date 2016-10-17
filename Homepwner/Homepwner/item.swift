//
//  item.swift
//  Homepwner
//
//  Created by Andre Dias on 17/10/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit

class Item: NSObject{
    
    var name: String
    var valueInDollars: Int
    var serialNumber:  String?
    let dateCreated: NSDate
    
    init(name: String, serialNumber: String?, valueInDollars: Int){
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = NSDate()
        
        super.init()
    }
    
    convenience init(random: Bool = false){
        if random{
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx =  arc4random_uniform(UInt32(adjectives.count))
            let randomAdjectives = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNouns = nouns[Int(idx)]
            
            let randomName = "\(randomAdjectives), \(randomNouns)"
            let randomValue = Int(arc4random_uniform(100))
            
            let randomSerialNumber = NSUUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
            
        }else{
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
}
