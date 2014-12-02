//
//  Item.swift
//  Owee
//
//  Created by gecko on 02/12/14.
//  Copyright (c) 2014 StelarTechnology. All rights reserved.
//

import Foundation
import UIKit

class Item {
    
    var ower: Ower!
    var object = "NO Object"
    var value = "No value"
    var startDate = "12/12/12"
    var dueDate = "13/13/13"
    var note = "No Note"
    var status = "Still Loaned"
    var image: UIImage!
    
    
    init(ower: Ower, object: String, value: String, startDate: String,
        dueDate: String, note: String, image: UIImage) {
            self.ower = ower
            self.object = object
            self.value = value
            self.startDate = startDate
            self.dueDate = dueDate
            self.note = note
            self.image = image
    }
    
    // change the status of the object given back or not
    func changeStatus() {
        if self.status == "Still Loaned" {
            self.status = "Given Back"
        } else {
            self.status = "Still Loaned"
        }
    }
    
    // change the due date
    func changeDueDate(date: String) {
        self.dueDate = date
    }
    
    // send a reminder message
    func sendReminder(owerPhone: String) {
        // TODO: implement this
    }
    
}


