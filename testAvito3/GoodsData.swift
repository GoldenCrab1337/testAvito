//
//  GoodsData.swift
//  testAvito3
//
//  Created by Андреев Николай on 31.08.2023.
//

import Foundation

struct Advertisement: Codable {
    var id, title, price, location: String
    var imageURL: String
    var createdDate: String

    enum CodingKeys: String, CodingKey {
        case id, title, price, location
        case imageURL = "image_url"
        case createdDate = "created_date"
    }
}

struct GoodsData: Codable {
    var advertisements: [Advertisement]
}


// MARK: - GoodsDataLS
struct GoodsDataLS: Codable {
    let id, title, price, location: String 
    let imageURL: String
    let createdDate, description, email, phoneNumber: String
    let address: String

    enum CodingKeys: String, CodingKey {
        case id, title, price, location
        case imageURL = "image_url"
        case createdDate = "created_date"
        case description, email
        case phoneNumber = "phone_number"
        case address
    }
}
