//
//  HeaderView.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("header_isil").headerImg()
            Spacer()
            HStack {
                Image(systemName: "heart.circle").headerButton()
                Image(systemName: "plus.circle").headerButton()
                Image(systemName: "message").headerButton()
            }
        }.padding(.top, 3)
        .padding(.bottom, 3)
        .padding(.leading, 8)
        .padding(.trailing, 8)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
