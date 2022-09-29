//
//  DataManager.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 28.09.2022.
//

class DataManager {
    static let shared = DataManager()
    
    private init () {}
    
    let names = ["John", "Jack", "Lisa", "Irina", "Alexander", "Dmytro", "Nick", "Kate", "Helen", "Eugen"]
    
    let surnames = ["Kucher", "Tyan", "Lee", "Zaporozhchenko", "Park", "Chan", "Klichko", "Arestovich", "Kraus", "Ellert"]
    
    let emails = ["test@gmail.com", "polyana@gmail.com", "ironman@gmail.com", "linkinpark@gmail.com", "noizemc@gmail.com", "monetochka@gmail.com", "donetsk@gmail.com", "pechenegi@gmail.com", "mongol@gmail.com", "iloveswift@gmail.com"]
    
    let telephoneNumbers = ["+77777777777", "+380333442288", "+90321435786", "+19879051256", "+79394584389", "+49869874394", "+90123948299", "+12992349898", "+20452958833", "+50276539843"]
}
