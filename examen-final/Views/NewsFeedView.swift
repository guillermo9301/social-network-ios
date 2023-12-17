//
//  NewsFeedView.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import SwiftUI
import URLImage

struct NewsFeedView: View {
    
    @Binding var user: [UserData]
    
    @State var like = false
    
    var body: some View {
        VStack {
            ForEach(user, id:\.id) { userData in
                VStack {
                    ScrollView {
                        VStack {
                            ForEach(userData.photoLibrary, id:\.self) { photo in
                                HStack {
                                    URLImage(URL(string: userData.userPhoto)!) {image in
                                        image.userPhotoDisplay()
                                    }
                                    Text("\(userData.name) \(userData.lastname)").newsFeedUserName()
                                    Spacer()
                                    Image(systemName: "ellipsis").smallIcon()
                                }.padding(.leading, 8).padding(.trailing, 8)
                                
                                Button(action: {
                                    //TODO: doubletapLike
                                }, label: {
                                    URLImage(URL(string: photo)!) {image in
                                        image.userPhotoFeed()
                                    }
                                })
                                
                                //interactions
                                ReactionButtonsView()
                                
                                //descriptions
                                HStack {
                                    VStack (alignment: .leading){
                                        Text("\(userData.description_line_1 ?? "")").descriptionText()
                                        Text("\(userData.description_line_2 ?? "")").descriptionText()
                                    }
                                    Spacer()
                                }.padding(.leading, 8).padding(.trailing, 8)
                                
                                //comments
                                HStack {
                                    URLImage(URL(string: userData.userPhoto)!) { image in
                                        image.userPhotoMini()
                                    }
                                    Text("Agrega un comentario...").commentHelperText()
                                    Spacer()
                                }.padding(.leading, 8).padding(.trailing, 8).padding(.bottom, 15)
                            }
                        }.padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                    
                }
            }
        }
        
    }
}
