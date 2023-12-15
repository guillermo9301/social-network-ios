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
                                HStack {
                                    Image(systemName: "heart").smallIcon()
                                    Image(systemName: "message").smallIcon()
                                    Image(systemName: "paperplane").smallIcon()
                                    Spacer()
                                    Image(systemName:"bookmark").smallIcon()
                                }.padding(.leading, 8).padding(.trailing, 8)
                                
                                //descriptions
                                VStack {
                                    Text("\(userData.description_line_1 ?? "")").descriptionText()
                                    Text("\(userData.description_line_2 ?? "")").descriptionText()
                                }
                            }
                        }.padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                    
                }
            }
        }
        
    }
}
