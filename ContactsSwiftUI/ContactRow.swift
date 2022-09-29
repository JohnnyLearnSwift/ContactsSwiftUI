//
//  ContactRow.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 29.09.2022.
//

import SwiftUI

struct ContactRow: View {
    let person: Person
    let isPhone: Bool
    
    var body: some View {
        HStack {
            if(isPhone) {
                ImageCell(image: "phone")
                TextCell(title: person.telephoneNumber)
            } else {
                ImageCell(image: "email")
                TextCell(title: person.email)
            }
        }
        .frame(height: 50, alignment: .leading)
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(person: Person(name: "", surname: "", email: "", telephoneNumber: ""), isPhone: true)
    }
}
