//
//  examen_finalApp.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import SwiftUI

@main
struct examen_finalApp: App {
    @State var mockUser = NewsFeedManager()
    var body: some Scene {
        WindowGroup {
            ContentView(filteredUser: mockUser.filterUserList)
        }
    }
}
