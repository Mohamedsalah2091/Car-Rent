//
//  AnimationSignUp.swift
//  Car Rent
//
//  Created by MAK on 4/16/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit


extension SignUpVc{
    
    func prepareAnimation(){
        
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.center.x += UIScreen.main.fixedCoordinateSpace.bounds.width
        
    }
    func Animation(){
       
        UIView.animate(withDuration: 1, delay: 0.5, options: [.curveEaseIn], animations: {
            self.leadingOfUserName.constant -= UIScreen.main.fixedCoordinateSpace.bounds.width
            
            self.leadingOfUserName.constant -= UIScreen.main.fixedCoordinateSpace.bounds.width
            self.leadingOfPassword.constant -= UIScreen.main.fixedCoordinateSpace.bounds.width
            self.leadingOfConfirmPassword.constant -= UIScreen.main.fixedCoordinateSpace.bounds.width
        }, completion: nil)
    }
    
    
    
}
