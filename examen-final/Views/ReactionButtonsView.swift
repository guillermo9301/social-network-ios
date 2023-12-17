//
//  ReactionButtonsView.swift
//  examen-final
//
//  Created by Guillermo on 17/12/23.
//

import SwiftUI

struct ReactionButtonsView: View {
    @State var like = false
    
    var body: some View {
        HStack (spacing: 10){
            
            Button(action: {
                like.toggle()
            }, label: {
                if like == true {
                    Image(systemName: "heart.fill").smallIcon().foregroundColor(.red)
                } else {
                    Image(systemName: "heart").smallIcon().foregroundColor(.black)
                }
            })
            Image(systemName: "message").smallIcon()
            Image(systemName: "paperplane").smallIcon()
            Spacer()
            //TODO: Button
            Image(systemName:"bookmark").smallIcon()
            
        }.padding(.leading, 8).padding(.trailing, 8)
    }
}

struct ReactionButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionButtonsView()
    }
}
