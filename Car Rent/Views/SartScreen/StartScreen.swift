//
//  ViewController.swift
//  Car Rent
//
//  Created by MAK on 4/11/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit

protocol NavigateStartScreen :class{
    func nextToSignUp()
    func nextToCarList()
}

class StartScreenVc : UIViewController , Storyboard {
    
    @IBOutlet weak var carLog: UIImageView!
    @IBOutlet weak var leadingCarLogConstraint: NSLayoutConstraint!
    @IBOutlet weak var backGroundOfRentCar: UIImageView!
    @IBOutlet weak var lableOfRentCar: UILabel!
    @IBOutlet weak var logIn: UIButton!
    
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var presenter : StartScreenVcPresenter!
    
    public weak var navigation: NavigateStartScreen?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        preparingViwe()
        carLogAndBackGroundAnimation()
    }
    
    func preparingViwe(){
        logIn.layer.cornerRadius = 15
        signUp.layer.cornerRadius = 15
        prepareAnimations()
        presenter = StartScreenVcPresenter(view: self)
    }
    
    @IBAction func pressLogin(_ sender: Any) {
        navigation?.nextToCarList()
    }
    @IBAction func pressSignUp(_ sender: Any) {
        navigation?.nextToSignUp()
    }
    
}

