//
//  ContentView.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var manager = NewsFeedManager()
    @State var filteredUser = [UserData]()
    @State private var userToSearch: String = ""
    @State var loadFeed = false
    
        var body: some View {
        
            VStack {
            HeaderView()
                ScrollView (.horizontal, showsIndicators: false){
                    HStack (spacing: 20){
                    ForEach(manager.userInfo.indices, id:\.self) { index in
                        Button(action: {
                            filteredUser = manager.filterUser(id: manager.userInfo[index].id)
                            print(filteredUser)
                            loadFeed.toggle()
                        }, label: {
                            StoriesView(user: $manager.userInfo[index])
                        })
                    }
                }.padding(8)
            }
            NewsFeedView(user: $filteredUser)
            Spacer()
        }
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
