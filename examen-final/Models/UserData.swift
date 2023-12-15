//
//  UserData.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import Foundation

struct UserData: Decodable, Hashable {
    var id: String
    let name: String
    let lastname: String
    let userPhoto: String
    let photoLibrary: [String]
    var description_line_1: String?
    var description_line_2: String?
    
}

enum TYPEerror: Error {
    case invalidURL
    case unableToComplete
    case invalidResponse
    case invalidData
    case decodingError
}

extension Data {
    func borarData(removeString word: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let borrarDataString = dataAsString?.replacingOccurrences(of: word, with: "")
        guard let data = borrarDataString?.data(using: .utf8) else {return nil}
        return data
    }
}
