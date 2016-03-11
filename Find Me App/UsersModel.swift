//
//  UsersModel.swift
//  Find Me App
//
//  Created by Sergio Rodriguez on 3/10/16.
//  Copyright © 2016 Sergio Rodriguez. All rights reserved.
//

import UIKit
import Foundation

class UsersModel: NSObject {
    
    //properties
    var id: String?
    var name: String?
    var email: String?
    var password: String?
    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(id:String, name: String, email: String, password: String) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        
    }
    
    //prints object's current state
    
    override var description: String {
        return "id: \(id), Name: \(name), email: \(email), password: \(password)"
    }
}
