//
//  ContactsList.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 28.09.2022.
//

import SwiftUI

struct ContactsList: View {
    let contacts: [Person]
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: DetailContact(person: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(contacts: [])
    }
}
