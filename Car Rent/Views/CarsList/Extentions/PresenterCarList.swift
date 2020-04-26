//
//  PresenterCarList.swift
//  Car Rent
//
//  Created by MAK on 4/17/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation

extension CarsListVc: CarListView  , pressedButton{
    
    func sendPressedButton(rowIndex: Int) {
        print(rowIndex)
        deleget?.next()
    }
    
}
