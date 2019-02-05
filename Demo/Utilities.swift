//
//  Utilities.swift
//  Demo
//
//  Created by Stefano Mondino on 27/01/2019.
//  Copyright © 2019 Synesthesia. All rights reserved.
//

import Foundation
import RxSwift
import Boomerang
extension String: ModelType {}
extension String {
    func firstCharacterCapitalized() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
}

struct DataManager {
    static let session = URLSession(configuration: URLSessionConfiguration.default)
    static let decoder =  JSONDecoder()
}

extension URL {
    func image() -> Observable<Image?> {
        return DataManager.session
            .rx
            .data(request: URLRequest(url: self))
            .map { Image(data: $0) }
    }
}
