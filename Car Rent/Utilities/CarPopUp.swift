//
//  CarPopUp.swift
//  myCarPopUp
//
//  Created by MAK on 4/16/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit


class CarPopUp{
    
    private  let popUp = UIView()
    private var carImage : UIImageView!
    private var carLableName = UILabel()
    private var carLableType = UILabel()
    private var carLableSpeed = UILabel()
    private let wantTheCarButton = UIButton()
    private let wantAnotherCarButton = UIButton()
    
    func Show(superView:UIView , image:UIImage , carName : String , carType : String , carSpeed : Float) {
        loadShape(view: superView)
        imageIcon(image: image)
        lableName(carName: carName,carType: carType,carSpeed: carSpeed)
        wantTheCarButtonActionPressed()
        wantAnotherCarButtonPressed()
    }
    @objc func remove() {
        UIView.animate(withDuration: 0.5, delay: 0.2, options: [.curveEaseIn], animations: {
            self.popUp.alpha = 0
        }, completion: {_ in
            self.popUp.removeFromSuperview()
        })
    }
    
    private func loadShape(view: UIView){
        view.addSubview(self.popUp)
        popUp.alpha = 0
        popUp.layer.cornerRadius = 20
        popUp.backgroundColor = .white
        popUp.layer.shadowOpacity = 5
        popUp.layer.shadowRadius = 5
        popUp.translatesAutoresizingMaskIntoConstraints = false
        popUp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popUp.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        popUp.widthAnchor.constraint(equalToConstant: (view.bounds.width - 50 ) ).isActive = true
        popUp.heightAnchor.constraint(equalToConstant: (view.bounds.height * 40/100) ).isActive = true
        
        UIView.animate(withDuration: 0.5, delay: 0.2, options: [], animations: {
            self.popUp.alpha = 1
        }, completion: nil)
    }
    
    
    private func imageIcon(image : UIImage){
        carImage = UIImageView(image: image)
        popUp.addSubview(carImage)
        carImage.contentMode = .scaleAspectFit
        carImage.layer.cornerRadius = 20
        carImage.translatesAutoresizingMaskIntoConstraints = false
        carImage.topAnchor.constraint(equalTo: popUp.topAnchor , constant: 10).isActive = true
        carImage.centerXAnchor.constraint(equalTo: popUp.centerXAnchor, constant: 0).isActive = true
        carImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        carImage.heightAnchor.constraint(equalToConstant: 130).isActive = true
    }
    
    private func lableName(carName : String , carType : String , carSpeed : Float){
        popUp.addSubview(carLableName)
        popUp.addSubview(carLableType)
        popUp.addSubview(carLableSpeed)
        
        carLableName.numberOfLines = 0
        carLableName.textAlignment = .left
        carLableType.numberOfLines = 0
        carLableType.textAlignment = .left
        carLableSpeed.numberOfLines = 0
        carLableSpeed.textAlignment = .left
        
        carLableName.text = "Car Name : \(carName)"
        carLableType.text = "Car Type : \(carType)"
        carLableSpeed.text = "Car Speed : \(carSpeed)"
        
        carLableName.font = UIFont.preferredFont(forTextStyle: .footnote)
        carLableType.font = UIFont.preferredFont(forTextStyle: .footnote)
        carLableSpeed.font = UIFont.preferredFont(forTextStyle: .footnote)
        
        carLableName.font = .systemFont(ofSize: 25)
        carLableType.font = .systemFont(ofSize: 25)
        carLableSpeed.font = .systemFont(ofSize: 25)
        
        carLableName.textColor = .black
        carLableType.textColor = .black
        carLableSpeed.textColor = .black
        
        carLableName.translatesAutoresizingMaskIntoConstraints = false
        carLableType.translatesAutoresizingMaskIntoConstraints = false
        carLableSpeed.translatesAutoresizingMaskIntoConstraints = false
        
        carLableName.topAnchor.constraint(equalTo: carImage.bottomAnchor , constant: 10).isActive = true
        carLableName.leadingAnchor.constraint(equalTo: popUp.leadingAnchor , constant: 5).isActive = true
        carLableName.trailingAnchor.constraint(equalTo: popUp.trailingAnchor , constant: 5).isActive = true
        
        carLableType.topAnchor.constraint(equalTo: carLableName.bottomAnchor , constant: 10).isActive = true
        carLableType.leadingAnchor.constraint(equalTo: popUp.leadingAnchor , constant: 5).isActive = true
        carLableType.trailingAnchor.constraint(equalTo: popUp.trailingAnchor , constant: 5).isActive = true
        
        carLableSpeed.topAnchor.constraint(equalTo: carLableType.bottomAnchor , constant: 10).isActive = true
        carLableSpeed.leadingAnchor.constraint(equalTo: popUp.leadingAnchor , constant: 5).isActive = true
        carLableSpeed.trailingAnchor.constraint(equalTo: popUp.trailingAnchor , constant: 5).isActive = true
        
    }
    
    private func wantTheCarButtonActionPressed(){
        
        popUp.addSubview(wantTheCarButton)
        
        wantTheCarButton.setTitle("Choice This", for: .normal)
        wantTheCarButton.layer.cornerRadius = 10
        wantTheCarButton.setTitleColor(UIColor.white, for: .normal)
        wantTheCarButton.backgroundColor = .orange
        wantTheCarButton.translatesAutoresizingMaskIntoConstraints = false
        
        wantTheCarButton.leadingAnchor.constraint(equalTo: popUp.leadingAnchor, constant: 10).isActive = true
        wantTheCarButton.topAnchor.constraint(equalTo: carLableSpeed.bottomAnchor , constant: 30).isActive = true
        wantTheCarButton.widthAnchor.constraint(equalToConstant:160).isActive = true
        wantTheCarButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        wantTheCarButton.addTarget(self, action: #selector(wantTheCarButtonAction), for: .touchUpInside)
    }
    @objc func wantTheCarButtonAction() {
    
    }
    private func wantAnotherCarButtonPressed(){
        
        popUp.addSubview(wantAnotherCarButton)
        
        wantAnotherCarButton.setTitle("Not This", for: .normal)
        wantAnotherCarButton.layer.cornerRadius = 10
        wantAnotherCarButton.setTitleColor(UIColor.white, for: .normal)
        wantAnotherCarButton.backgroundColor = .orange
        wantAnotherCarButton.translatesAutoresizingMaskIntoConstraints = false
        
        wantAnotherCarButton.trailingAnchor.constraint(equalTo: popUp.trailingAnchor, constant: -10).isActive = true
        wantAnotherCarButton.topAnchor.constraint(equalTo: carLableSpeed.bottomAnchor , constant: 30).isActive = true
        wantAnotherCarButton.widthAnchor.constraint(equalToConstant:160).isActive = true
        wantAnotherCarButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        wantAnotherCarButton.addTarget(self, action: #selector(remove), for: .touchUpInside)
    }
    
    
}
