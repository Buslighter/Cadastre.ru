//
//  APIModel.swift
//  Cadastre.ru
//
//  Created by gleba on 16.11.2022.
//

import Foundation
// MARK: - Definitions
struct Definitions: Codable {
    let request: Request
//    let error: JSONNull?
    let data: [Datum]
}
//// MARK: - Datum
//struct Datum: Codable {
//    let id: String
//    let type: Resource
//    let title, annotation, date, updated: String
//    let color: String
//    let url, originalURL: String
//    let image, thumbnail: String
//
//    enum CodingKeys: String, CodingKey {
//        case id, type, title, annotation, date, updated, color, url
//        case originalURL = "originalUrl"
//        case image, thumbnail
//    }
//}
// MARK: - Datum
struct Datum: Codable {
    let id: String
    let type: TypeEnum
    let title, annotation, updated: String
    let url: String
    let articleID: String
    let isSubscriptionRequired: String
    let image: String?
    let thumbnail: String?

    enum CodingKeys: String, CodingKey {
        case id, type, title, annotation, updated, url
        case articleID = "articleId"
        case isSubscriptionRequired, image, thumbnail
    }
}

enum TypeEnum: String, Codable {
    case definition = "definition"
}

enum Resource: String, Codable {
    case news = "news"
}

// MARK: - Request
struct Request: Codable {
    let version: String
    let resource: String
//    let resourceID: JSONNull?
    let method: String
//    let parameters: [JSONAny]
    let userAuthKeyID: String

    enum CodingKeys: String, CodingKey {
        case version, resource
//        case resourceID = "resourceId"
        case method
        case userAuthKeyID = "userAuthKeyId"
    }
}
//// MARK: - Request
//struct Request: Codable {
//    let version: String
//    let resource: Resource
////    let resourceID: JSONNull?
//    let method: String
////    let parameters: [JSONAny]
//    let userAuthKeyID: String
//
//    enum CodingKeys: String, CodingKey {
//        case version, resource
////        case resourceID = "resourceId"
//        case method
////        , parameters
//        case userAuthKeyID = "userAuthKeyId"
//    }
//}


