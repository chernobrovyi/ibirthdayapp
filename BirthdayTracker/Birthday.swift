//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by Valeriy Chernobrovyi on 29/07/2019.
//  Copyright © 2019 Valeriy Chernobrovyi. All rights reserved.
//

import Foundation

class Birthday {
    
    let firstName : String
    let lastName : String
    let birthday : Date
    
    init(firstName : String, lastName : String, birthday : Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthday = birthday
    }
}
