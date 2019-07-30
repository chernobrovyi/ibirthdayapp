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
    let birthdate : Date
    
    init(firstName : String, lastName : String, birthdate : Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
    }
}
