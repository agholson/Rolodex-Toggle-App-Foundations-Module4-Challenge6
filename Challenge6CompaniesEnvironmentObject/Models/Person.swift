//
//  Person.swift
//  Challenge6CompaniesEnvironmentObject
//
//  Created by Shepherd on 8/7/21.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    var name = ""
    var address = ""
    var company = ""
    var yearsExperience:Double = 0
    
}
