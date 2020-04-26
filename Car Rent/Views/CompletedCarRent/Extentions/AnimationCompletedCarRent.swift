//
//  AnimationCompletedCarRent.swift
//  Car Rent
//
//  Created by MAK on 4/20/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit
import QuartzCore

extension CompletedCarRentVc{
    
    func cubeTransition(label: UILabel, text: String) {
        let auxLabel = UILabel(frame: label.frame)
        auxLabel.text = text
        auxLabel.font = label.font
        auxLabel.textColor = label.textColor
        auxLabel.textAlignment = label.textAlignment
        auxLabel.backgroundColor =  .white
        
        let auxLabelOffset = CGFloat(-1) * label.frame.height / 2.0 // up || down
        auxLabel.transform = CGAffineTransform(translationX: 0.0, y: auxLabelOffset).scaledBy(x: 1.0, y: 0.1)
        label.superview?.addSubview(auxLabel)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseOut], animations: {
            auxLabel.transform = .identity
            label.transform = CGAffineTransform(translationX: 0.0, y: -auxLabelOffset).scaledBy(x: 1.0, y: 0.1)
        }, completion: { _ in
            label.text = auxLabel.text
            label.transform = .identity
            auxLabel.removeFromSuperview()
        })
    }
    
    
    
    
    
    
    
}
