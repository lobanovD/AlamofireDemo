//
//  JsonStructures.swift
//  AlamofireDemo
//
//  Created by Dmitrii Lobanov on 06.08.2021.
//

import Foundation

// MARK: - UserBaseInfo
struct UserBaseInfo: Codable {
    let response: [Response]
}

// MARK: - Response
struct Response: Codable {
    let firstName: String
    let id: Int
    let lastName: String

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case id
        case lastName = "last_name"
    }
}
