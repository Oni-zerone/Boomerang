//
//  Show.swift
//  Demo
//
//  Created by Stefano Mondino on 24/10/2019.
//  Copyright © 2019 Synesthesia. All rights reserved.
//

import Foundation

struct Episode: Codable {
    let name: String
    let show: Show
    let image: Poster?
}
struct ShowSearchResult: Codable {
    let show: Show
}

struct Poster: Codable {
    let medium: URL
    let original: URL
}

struct Show: Codable {
    let name: String
    // swiftlint:disable identifier_name
    let id: Int
    // swiftlint:enable identifier_name
    let image: Poster?
    let genres: [String]
}
