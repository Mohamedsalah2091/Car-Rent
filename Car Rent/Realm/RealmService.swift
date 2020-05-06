//
//  RealmService.swift
//  Car Rent
//
//  Created by MAK on 5/6/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit
import RealmSwift

class RealmService{
    
    static let shared = RealmService()
    
    
    var realm = try! Realm()
    var dataArray : Results<UserData>!
    
    func save(_ object :Object){
        do{
            try realm.write {
                realm.add(object)
            }
        }catch{
            print(error)
        }
    }
    
    
    func update(_ object :Object , data : [String : Any?]){
        do{
            try realm.write {
                for (key , value) in data{
                    object.setValue(value, forKey: key)
                }
            }
        }catch{
            print(error)
        }
    }
    
    
    func delete(_ object :Object){
        do{
            try realm.write {
                realm.delete(object)
            }
            
        }catch{
            print(error)
        }
    }
    
    
    
}

