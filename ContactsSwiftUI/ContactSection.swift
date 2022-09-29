//
//  ContactSection.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 29.09.2022.
//

import SwiftUI

struct ContactSection: View {
    let person: Person
    var body: some View {
        Section(header: Text(person.fullName)) {
            ContactRow(person: person, isPhone: true)
            ContactRow(person: person, isPhone: false)
        }
        
    }
}

struct ContactSection_Previews: PreviewProvider {
    static var previews: some View {
        ContactSection(person: Person(name: "", surname: "", email: "", telephoneNumber: ""))
    }
}
