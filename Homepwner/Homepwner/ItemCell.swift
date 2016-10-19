//
//  ItemCell.swift
//  Homepwner
//
//  Created by Andre Dias on 18/10/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell{
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var serialNumberLabel: UILabel!
    
    @IBOutlet var valueLabel: UILabel!
    
    func updateLabels(){
        let bodyFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        nameLabel.font = bodyFont
        valueLabel.font = bodyFont
        
        let captionFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        serialNumberLabel.font = captionFont
        
    }

}
