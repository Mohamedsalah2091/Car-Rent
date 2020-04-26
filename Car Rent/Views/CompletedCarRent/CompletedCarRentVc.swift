//
//  CompletedCarRent.swift
//  Car Rent
//
//  Created by MAK on 4/20/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit



class CompletedCarRentVc: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource , Storyboard{
    
    @IBOutlet weak var daysSpinner: UIPickerView!
    @IBOutlet weak var reseveAtHomeOrNot: UISegmentedControl!
    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var totalAmountOfMonyLable: UILabel!
    var totalmony : Double = 0.0
    var SelectedpickerView : Double = 1.0
    var precenter :  CompletedCarRentPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    @IBAction func reseveAtHomeOrNotPress(_ sender: UISegmentedControl) {
        updateTotal()
    }
    
    
    @IBAction func pressDone(_ sender: Any) {
        
    }
    
    
    
    func prepareView(){
        done.layer.cornerRadius = 15
        precenter = CompletedCarRentPresenter(view: self)
        daysSpinner.dataSource = self
        daysSpinner.delegate = self
        totalmony = 100 + 150
        totalAmountOfMonyLable.text = "Total Amount of mony : \(totalmony)"
    }
    
}
