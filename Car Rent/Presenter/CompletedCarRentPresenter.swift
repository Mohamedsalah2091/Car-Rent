//
//  CompletedCarRentPresenter.swift
//  Car Rent
//
//  Created by MAK on 4/20/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import Foundation

protocol CompletedCarRentView : class {
    func addDataToSpinner(data : [String]) -> [String]
    func daysSpinnerDataCount(count : Int) ->Int
    func totalmonyCalculat(mony:Double)
}


class CompletedCarRentPresenter{
    
    private weak var view : CompletedCarRentView?
    
    init(view :  CompletedCarRentView) {
        self.view = view
    }
    
    func addDataToSpinner()-> [String]{
        return (view?.addDataToSpinner(data : ["1" , "2", "3" , "4" , "5" , "6", "7"]))!
    }
    
    func daysSpinnerDataCount() -> Int {
        return (view?.daysSpinnerDataCount(count: ["1" , "2", "3" , "4" , "5" , "6", "7"].count))!
    }
    
    func totalmonyCalculat(yesOrNo :  Int , numberOfDays : Double , carHouerSalary : Double){
        var totalMony = 0.0
        if 0 == yesOrNo{
            totalMony += 100
        }
        totalMony += numberOfDays * carHouerSalary
        view?.totalmonyCalculat(mony: totalMony)
    }
    
}
