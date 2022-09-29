//
//  TextCell.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 29.09.2022.
//

import SwiftUI

struct TextCell: View {
    let title: String
    var body: some View {
        Text(title)
            .frame(height: 50, alignment: .leading)
    }
}

struct TextCell_Previews: PreviewProvider {
    static var previews: some View {
        TextCell(title: "")
    }
}
