//
//  CarsListPresenter.swift
//  Car Rent
//
//  Created by MAK on 4/17/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation

protocol CarListView : class {
    

    
}


class  CarListVcPresenter{
    private weak var view: CarListView?
    
    init(view : CarListView) {
        self.view = view
    }
    
   

}
