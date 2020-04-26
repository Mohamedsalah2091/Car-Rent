//
//  RentCoordinatoer.swift
//  Car Rent
//
//  Created by MAK on 4/26/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit


public protocol BackToStartScreen {
    func back()
}

class RentCoordinatoer: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    var deleget : BackToStartScreen?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let view = CarsListVc.instantiate(name : "CarListVc")
        view.deleget = self
        navigationController.pushViewController(view, animated: true)
    }
    
}
extension RentCoordinatoer : NavigateCarsList{
    
    func next() {
        let view = CompletedCarRentVc.instantiate(name : "CompletedCarRent")
        navigationController.pushViewController(view, animated: true)
    }
    
   
    func back() {
        deleget?.back()
    }
    
    
}
