//
//  Coordinator.swift
//  Car Rent
//
//  Created by MAK on 4/24/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit

protocol Coordinator : class{
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
