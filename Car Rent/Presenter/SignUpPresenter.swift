//
//  SignUpPresenter.swift
//  Car Rent
//
//  Created by MAK on 4/20/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation
import RealmSwift

protocol SignUpView : class {
    func saveUserData(done : Bool)
}


class SignUpVcPresenter{
    
    private weak var view: SignUpView?
    
    
    
    init(view : SignUpView) {
        self.view = view
        let realm = RealmService.shared.realm
        RealmService.shared.dataArray = realm.objects(UserData.self)
        // print(RealmService.shared.realm.configuration.fileURL)
    }
    
    func saveUserData(userName : String , password : String , confirmpassword : String ){
        if userName.isEmpty || password != confirmpassword || password.isEmpty{
            view?.saveUserData(done: false)
        }else {
            view?.saveUserData(done: true)
            let newData = UserData(name: userName,password: password)
            RealmService.shared.save(newData)
        }
    }
    
}
