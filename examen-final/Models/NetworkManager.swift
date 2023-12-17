//
//  NetworkManager.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    //API remota, hecha en python con flask
    static let url = "https://guillermo93.pythonanywhere.com/newsfeed"
    
    init() {}
    
    //metodo para hacer la peticion a la API
    func getUserData(completed: @escaping (Result<[UserData], TYPEerror>) -> Void) {
        guard let url = URL(string: NetworkManager.url)
        else {
            completed(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            guard let data = data?.borarData(removeString: "null,") else {
                completed(.failure(.decodingError))
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode([UserData].self, from: data)
                completed(.success(decodedResponse))
            } catch {
                print("Debug error \(error.localizedDescription)")
                completed(.failure(.invalidResponse))
            }
        }.resume()
    }
}
