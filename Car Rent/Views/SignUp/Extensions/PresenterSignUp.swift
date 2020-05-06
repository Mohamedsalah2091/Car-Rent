//
//  PresenterSignUp.swift
//  Car Rent
//
//  Created by MAK on 4/26/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit
import RealmSwift

extension SignUpVc : SignUpView{
    
    func saveUserData(done: Bool) {
        loginOrNot = done
    }
    
}
