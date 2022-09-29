//
//  ImageCell.swift
//  ContactsSwiftUI
//
//  Created by Eugenie Tyan on 29.09.2022.
//

import SwiftUI

struct ImageCell: View {
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 50, height: 50, alignment: .leading)
    }
}

struct ImageCell_Previews: PreviewProvider {
    static var previews: some View {
        ImageCell(image: "")
    }
}
