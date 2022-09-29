//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 28.09.2022.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    
    let name: String
    let surname: String
    let email: String
    let telephoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

struct Contacts {
    static let shared = Contacts()
    
    private init () {}
    
    var persons: [Person] {
        var contacts: [Person] = []
        var names = DataManager.shared.names
        var surnames = DataManager.shared.surnames
        var emails = DataManager.shared.emails
        var telephoneNumbers = DataManager.shared.telephoneNumbers
        
        // Если сделать свойства модели опциональными и потом извлекать if let то можно заполнять массив моделями с пустыми полями
        // Или можно гвардами извлекать и тогда после того как опустеет первый массив, цикл прекратиться, я правильно понимаю?
        for _ in 0...9 {
            let name = names.remove(at: Int.random(in: 0..<names.count))
            let surname = surnames.remove(at: Int.random(in: 0..<surnames.count))
            let email = emails.remove(at: Int.random(in: 0..<emails.count))
            let telephoneNumber = telephoneNumbers.remove(at: Int.random(in: 0..<telephoneNumbers.count))
            
            let person = Person(name: name, surname: surname, email: email, telephoneNumber: telephoneNumber)
            contacts.append(person)
        }
        return contacts
    }

}
