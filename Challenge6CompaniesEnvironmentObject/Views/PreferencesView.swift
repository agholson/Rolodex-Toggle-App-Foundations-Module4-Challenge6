//
//  PreferencesView.swift
//  Challenge6CompaniesEnvironmentObject
//
//  Created by Shepherd on 8/12/21.
//

import SwiftUI

struct PreferencesView: View {
    // Inherit this
    @EnvironmentObject var model:RolodexModel

    var body: some View {
        
        
        // Use binding with the $
        VStack{
            
            Text("Preferences")
                .font(.largeTitle)
                
            
            VStack {
                Toggle("Show name", isOn: $model.showName)
                Toggle("Show company", isOn: $model.showCompany)
                Toggle("Show address", isOn: $model.showAddress)
                Toggle("Show years of experience", isOn: $model.showYearsExperience)
            }
            .padding()
            .font(.title2)
            
            // Add Spacer to push everything up
            Spacer()
        }
        
        
       
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
            .environmentObject(RolodexModel())
    }
}
