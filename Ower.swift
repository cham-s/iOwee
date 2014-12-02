//
//  Ower.swift
//  Owee
//
//  Created by dash-c on 02/12/14.
//  Copyright (c) 2014 StelarTechnology. All rights reserved.
//
/*
*  This class represent the person having the object
*  With crédentials and all
*/
import Foundation
import UIKit

class Ower {
    
    var firstName: String!
    var lastName: String!
    var email: String!
    var phone: String!
    var address: String!
    
    init(firstName: String, lastName: String, email: String, phone: String,
        address: String) {
            self.firstName = firstName
            self.lastName = lastName
            self.email = email
            self.phone = phone
            self.address = address
    }
    
}

