//
//  TableViewCarList.swift
//  Car Rent
//
//  Created by MAK on 4/16/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit


extension CarsListVc {
    
    func prepareTableView(){
        carTableView.dataSource = self
        carTableView.delegate = self
        carTableView.register(UINib (nibName: "TableViewCarCell", bundle:  nil ), forCellReuseIdentifier: "CarCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath) as! TableViewCarCell
        cell.carImage.image = #imageLiteral(resourceName: "car")
        cell.carName.text = "Car Name : A"
        cell.pricePerHour.text = "Price Per Hour : 2 "
        cell.carSpeed.text = "Car Speed : 305 "
        cell.carType.text = "Car Type : Racing "
        cell.chooseButton.layer.cornerRadius = 5
        cell.chooseButton.backgroundColor = .orange
        cell.chooseButton.tag = indexPath.row
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !pressed.contains(indexPath.row){
            pressed.append(indexPath.row)
        }else{
            let index = pressed.firstIndex(of: indexPath.row)!
            pressed.remove(at: index)
        }
        self.carTableView.beginUpdates()
        self.carTableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        self.carTableView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if pressed.contains(indexPath.row){
            return 300
        }
        else {
            return  120
        }
    }
    
    
    
    
    
    
}
