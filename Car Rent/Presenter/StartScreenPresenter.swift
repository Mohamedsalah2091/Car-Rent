//
//  StartScreenPresenter.swift
//  Car Rent
//
//  Created by MAK on 4/12/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation

protocol StartScreenView : class {

}


class StartScreenVcPresenter{
    
    private weak var view: StartScreenView?
    
    init(view : StartScreenView) {
        self.view = view
    }
   
    
}
