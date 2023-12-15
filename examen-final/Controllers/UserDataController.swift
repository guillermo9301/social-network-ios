//
//  UserDataController.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import Foundation

class NewsFeedManager: ObservableObject {
    
    init() {
        getUserData()
    }
    
    @Published var userInfo = [UserData]()
    @Published var filterUserList = [UserData]()
    
    
    func getUserData() {
        NetworkManager.shared.getUserData { result in
            DispatchQueue.main.async {
                switch result {
                case.success(let userInfo):
                    print("Cantidad de usuarios: \(userInfo.count)")
                    self.userInfo = userInfo
                    //self.filterUserList = userInfo
                case.failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
    
    func filterUser(id: String) -> [UserData] {
        filterUserList = userInfo.filter({ user in
            user.id.lowercased().contains(id.lowercased())
        })
        return filterUserList
    }
}
