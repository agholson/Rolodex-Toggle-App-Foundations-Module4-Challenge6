//
//  PersonModel.swift
//  Challenge6CompaniesEnvironmentObject
//
//  Created by Shepherd on 8/7/21.
//

import Foundation

/*
 ObservableObject allows us to use a single object, which we track all over
 */
class RolodexModel: ObservableObject {
    // Make a list of Person objects, we can track through the UI
    @Published var personList = [Person]()
    
    // Show preferences held here
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYearsExperience = true
    
    // Initialize our list of people here
    init() {
        self.personList = [
            Person(id: UUID(), name: "Bill Sung", address: "3240 Pudding Rd", company: "Picklesburg", yearsExperience: 3.5),
            Person(id: UUID(), name: "Ted Hunter", address: "Victor Ln 900", company: "McDonalds", yearsExperience: 5),
            Person(id: UUID(), name: "Sally Marge", address: "500 South Pick Rd", company: "White House", yearsExperience: 9),
            Person(id: UUID(), name: "Margaret Salinger", address: "2149 Saint Albany Rd", company: "LG", yearsExperience: 14)
        ]
    }
    
}
