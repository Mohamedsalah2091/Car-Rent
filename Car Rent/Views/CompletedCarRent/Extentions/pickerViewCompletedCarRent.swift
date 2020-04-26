//
//  pickerViewCompletedCarRent.swift
//  Car Rent
//
//  Created by MAK on 4/20/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit


extension CompletedCarRentVc{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return precenter.daysSpinnerDataCount() // Look Hwo The Vidio Return Counter Of Data In MVP
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return precenter.addDataToSpinner()[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SelectedpickerView = Double(precenter.addDataToSpinner()[row])!
        updateTotal()
    }
    
    func updateTotal(){
        precenter.totalmonyCalculat( yesOrNo : reseveAtHomeOrNot.selectedSegmentIndex , numberOfDays : SelectedpickerView, carHouerSalary: 150)
    }
    
    
}


