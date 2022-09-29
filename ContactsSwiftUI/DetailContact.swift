//
//  DetailContact.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 28.09.2022.
//

import SwiftUI

struct DetailContact: View {
    let person: Person
    
    var body: some View {
        VStack {
            Image("placeholder")
                .resizable()
                .frame(height: 150)
            List {
                ContactRow(person: person, isPhone: true)
                ContactRow(person: person, isPhone: false)
            }
            .listStyle(.plain)
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailContact_Previews: PreviewProvider {
    static var previews: some View {
        DetailContact(person: Person(name: "", surname: "", email: "", telephoneNumber: ""))
    }
}
