



import UIKit


extension CompletedCarRentVc : CompletedCarRentView{
    
    func totalmonyCalculat(mony: Double) {
       totalmony = mony
       cubeTransition(label: totalAmountOfMonyLable, text: "Total Amount of mony : \(totalmony)")
    }
    
    func daysSpinnerDataCount(count: Int) -> Int {
        return count
    }
    
    
    func addDataToSpinner(data: [String]) -> [String] {
       return data
    }
    
    
}
