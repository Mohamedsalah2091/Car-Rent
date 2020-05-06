//
//  SignUpVc.swift
//  Car Rent
//
//  Created by MAK on 4/12/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit
import RealmSwift

protocol NavigateSignUp{
    func goBack()
}

class SignUpVc: UIViewController , Storyboard{
    
    @IBOutlet weak var backGroundSignUp: UIImageView!
    @IBOutlet weak var signUplable: UILabel!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    var presenter : SignUpVcPresenter!
    var navigation: NavigateSignUp?
    
    var data : Results<UserData>!
    var loginOrNot : Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preparingView()
    }
    func preparingView(){
        signUpButton.layer.cornerRadius = 15
        presenter = SignUpVcPresenter(view : self)
    }
    
    
    @IBAction func pressSignUpButton(_ sender: Any) {
        presenter.saveUserData(userName: userName.text!, password: password.text!, confirmpassword: confirmPassword.text!)
        if  loginOrNot {
            navigation?.goBack()
        }
    }
    
}
