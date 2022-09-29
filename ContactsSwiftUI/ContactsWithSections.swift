//
//  ContactsWithSections.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 28.09.2022.
//

import SwiftUI

struct ContactsWithSections: View {
    let contacts: [Person]
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                ContactSection(person: contact)
            }
            .listStyle(.automatic)
            .navigationTitle("Contact List")
        }
        
    }
}

struct ContactsWithSections_Previews: PreviewProvider {
    static var previews: some View {
        ContactsWithSections(contacts: [])
    }
}
