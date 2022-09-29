//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 28.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    private var contacts = Contacts.shared.persons
    
    var body: some View {
        TabView {
            ContactsList(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.circle")
                }
            ContactsWithSections(contacts: contacts)
                .tabItem {
                    Label("Numbers", systemImage: "phone.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
