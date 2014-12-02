//
//  TableViewCell.swift
//  Owee
//
//  Created by gecko on 01/12/14.
//  Copyright (c) 2014 StelarTechnology. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var statusLabel: UILabel!
    @IBOutlet weak private var dateLabel: UILabel!
    @IBOutlet weak private var priceLabel: UILabel!

    // configure for the user of the class to only enter text directly - credits: NatashaTheRobots
    func configure(#nameText: String, statusText: String, dateText:String,
        priceText:String) {
            nameLabel.text = nameText
            nameLabel.accessibilityLabel = nameText
            statusLabel.text = statusText
            statusLabel.accessibilityLabel = statusText
            dateLabel.text = dateText
            dateLabel.accessibilityLabel = dateText
            priceLabel.text = priceText
            priceLabel.accessibilityLabel = "$ \(priceText)"
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
