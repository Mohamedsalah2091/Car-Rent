//
//  SettingCoordinatoer.swift
//  Car Rent
//
//  Created by MAK on 4/26/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit



class SettingCoordinatoer: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let view = StartScreenVc.instantiate(name : "Main")
        view.navigation = self
        navigationController.pushViewController(view, animated: false)
    }
    
}
extension SettingCoordinatoer :NavigateStartScreen {
    
    
    func nextToCarList() {
        let view = RentCoordinatoer(navigationController: navigationController)
        view.deleget = self
        childCoordinators.append(view)
        view.start()
    }
    
    
    func nextToSignUp() {
        let view = SignUpVc.instantiate(name : "SignUp")
        view.navigation = self
        navigationController.pushViewController(view, animated: true)
    }
    
    
}
extension SettingCoordinatoer :NavigateSignUp {
    
    func goBack() {
        navigationController.popViewController(animated: true)
    }
}
extension SettingCoordinatoer : BackToStartScreen{
    
    func back() {
        navigationController.popViewController(animated: true)
        childCoordinators.removeLast()
    }
    
}
