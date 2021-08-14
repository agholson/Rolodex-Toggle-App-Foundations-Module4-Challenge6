//
//  ContentView.swift
//  Challenge6CompaniesEnvironmentObject
//
//  Created by Shepherd on 8/7/21.
//

import SwiftUI

struct ContentView: View {
    
    // Write the observed object here
    @EnvironmentObject var model: RolodexModel
    
    var body: some View {
        
        VStack {
            
            Text("Rolodex")
                .font(.largeTitle)
            
            TabView {
                List(model.personList) { person in
                    PersonView(person: person)
                }
                .tabItem {
                    Text("Rolodex")
                    Image(systemName: "person.3")
                }
                .navigationTitle("Your Network")
                
                TabView {
                    PreferencesView()
                }
                .tabItem {
                    Text("Preferences")
                    Image(systemName: "gearshape")
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
        ContentView()
            .environmentObject(RolodexModel())
    }
}
