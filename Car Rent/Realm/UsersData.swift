//
//  UsersData.swift
//  Car Rent
//
//  Created by MAK on 5/6/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation
import RealmSwift


class UserData : Object {
    
    @objc dynamic var name = ""
    @objc dynamic var password = ""
    
    convenience init(name : String , password : String) {
        self.init()
        self.name = name
        self.password = password
    }
    
    
}
