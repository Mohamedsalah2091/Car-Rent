//
//  SignUpPresenter.swift
//  Car Rent
//
//  Created by MAK on 4/20/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation

protocol SignUpView : class {
    func cheekData(done : Bool)
}


class SignUpVcPresenter{
    
    private weak var view: SignUpView?
    
    init(view : SignUpView) {
        self.view = view
    }
    
    func cheekData(userName : String , password : String , confirmpassword : String ){
        if userName.isEmpty || password != confirmpassword || password.isEmpty{
            view?.cheekData(done: false)
            
        }else {
            view?.cheekData(done: true)
        }
    }
    
}
