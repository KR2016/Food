//
//  RestaurantDetailTableViewCell.swift
//  FoodPin
//
///  Created by Developer Engineer on 2017/10/13
//  Copyright © 2017 Locosys test. All rights reserved.
//


import UIKit

class RestaurantDetailTableViewCell: UITableViewCell {
    
    @IBOutlet var fieldLabel:UILabel!
    @IBOutlet var valueLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
