//
//  PersonView.swift
//  Challenge6CompaniesEnvironmentObject
//
//  Created by Shepherd on 8/8/21.
//
import Foundation
import SwiftUI

struct PersonView: View {
    // Tells it, we have access to the environent object model
    @EnvironmentObject var model: RolodexModel

    var person = Person()
    
    var body: some View {
        
        // Use a second VStack to make the text go towards the left
        VStack(alignment: .leading) {
            // Choose whether/ not to show each of the people's details
            if model.showName {
                Text(person.name)
                    .font(.title)
            }
            
            if model.showAddress {
                HStack {
                    Text("Address:")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(person.address)
                }
            }
            
            if model.showCompany {
                HStack {
                    Text("Company:")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(person.company)
                }
            }
            
            if model.showYearsExperience {
                HStack {
                    Text("Years of experience:")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    // Round the Double to one decimal place
                    Text(String(format:"%.1f", person.yearsExperience))
                }
            }
        }
        .padding(.bottom)
        
    }
}

// Extends Double, so we can round it to one place
extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

struct PersonView_Previews: PreviewProvider {
    
    static var previews: some View {
        // Read the first person here
        let model = RolodexModel()
        // Pass in the person here
        PersonView(person: model.personList[0])
    }
}
