//
//  CarsListVc.swift
//  Car Rent
//
//  Created by MAK on 4/16/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit

protocol NavigateCarsList {
    func back()
    func next()
}

class CarsListVc: UIViewController ,  UITableViewDataSource , UITableViewDelegate , Storyboard{
    
    @IBOutlet weak var carTableView: UITableView!
    let carAlert = CarPopUp()
    
    @IBOutlet weak var backButton: UIButton!
    var pressed = [Int]()
    var popUpAdded : Bool = false
    
    var presenter : CarListVcPresenter!
    var deleget : NavigateCarsList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preparingView()
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.hidesBackButton = true
    }
    func preparingView(){
        TableViewCarCell.delegate = self
        presenter = CarListVcPresenter(view: self)
        prepareTableView()
        backButton.layer.cornerRadius = 15
    }
    
    @IBAction func pressBack(_ sender: Any) {
        deleget?.back()
    }
    
}

