//
//  StartScreenEx.swift
//  Car Rent
//
//  Created by MAK on 4/12/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit

extension StartScreenVc {
    
    
    func prepareAnimations(){
        backGroundOfRentCar.isHidden = true
        lableOfRentCar.isHidden = true
        self.logIn.isHidden = true
        self.signUp.isHidden = true
        self.userNameTextField.isHidden = true
        self.passwordTextField.isHidden = true
        
    }
    
    
    func carLogAndBackGroundAnimation(){
        UIView.animateKeyframes(withDuration: 1, delay: 0.5, options: [.calculationModeCubic], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 2) {
                self.carLog.center.x += CGFloat(UIScreen.main.fixedCoordinateSpace.bounds.width) / 2 - self.carLog.bounds.width / 2
            }
        }, completion: { _ in
            self.leadingCarLogConstraint.constant = ( CGFloat(UIScreen.main.fixedCoordinateSpace.bounds.width) / 2 + 10 ) - self.carLog.bounds.width / 2
            self.backGroundOfRentCarAnimation()
        }
        )
    }
    
    func backGroundOfRentCarAnimation(){
        UIView.transition(with: backGroundOfRentCar, duration: 0.5, options: [.transitionFlipFromLeft], animations: {
            self.backGroundOfRentCar.isHidden = false
        }) { (_) in
            self.lableOfRentCar.isHidden = false
            self.logIn.isHidden = false
            self.signUp.isHidden = false
            self.userNameTextField.isHidden = false
            self.passwordTextField.isHidden = false
        }
    }
    
    
}
