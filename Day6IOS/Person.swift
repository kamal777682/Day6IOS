//
//  Person.swift
//  Day6IOS
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

struct Person
{
    var id : Int
    var firstName : String
    var lastName : String
    var gender : String
    var salary : Float
    
    init ( id : Int, firstName : String, lastname : String , gender : String , salary : Float)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastname
        self.gender = gender
        self.salary = salary
    }

}
