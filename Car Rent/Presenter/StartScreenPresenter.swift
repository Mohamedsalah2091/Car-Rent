//
//  StartScreenPresenter.swift
//  Car Rent
//
//  Created by MAK on 4/12/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation
import RealmSwift

protocol StartScreenView : class {
    
}


class StartScreenVcPresenter{
    
    private weak var view: StartScreenView?
    
    init(view : StartScreenView) {
        self.view = view
    }
    
    func cheekData(name : String , password:String) -> Bool {
        for item in RealmService.shared.dataArray {
            if item.name == name && item.password == password{
                return true
            }
        }
        return false
        
    }
    
    
}
