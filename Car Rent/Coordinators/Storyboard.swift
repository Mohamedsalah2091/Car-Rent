//
//  Storyboard.swift
//  Car Rent
//
//  Created by MAK on 4/26/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit

protocol Storyboard {
    static func instantiate(name : String) -> Self
}

extension Storyboard where Self: UIViewController {
    static func instantiate(name : String) -> Self {
        
        let fullName = NSStringFromClass(self)
        
        let className = fullName.components(separatedBy: ".")[1]
        
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
