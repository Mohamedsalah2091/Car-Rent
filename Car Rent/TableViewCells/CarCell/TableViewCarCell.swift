//
//  TableViewCarCell.swift
//  Car Rent
//
//  Created by MAK on 4/16/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit

protocol pressedButton {
    func sendPressedButton(rowIndex :Int)
}

class TableViewCarCell: UITableViewCell {

    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var pricePerHour: UILabel!
    @IBOutlet weak var carSpeed: UILabel!
    @IBOutlet weak var carType: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    static var delegate: pressedButton?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func pressChooseButton(_ sender: UIButton) {
        TableViewCarCell.delegate?.sendPressedButton(rowIndex: sender.tag)
    }
}
