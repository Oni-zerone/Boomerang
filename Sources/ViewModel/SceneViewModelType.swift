//
//  SceneViewModelType.swift
//  Boomerang
//
//  Created by Stefano Mondino on 04/02/2019.
//  Copyright © 2019 Synesthesia. All rights reserved.
//

import Foundation
import RxSwift

public protocol SceneIdentifier: Identifier {
    func scene<T: Scene>() -> T?
}

public protocol SceneViewModelType: IdentifiableViewModelType {
    var sceneIdentifier: SceneIdentifier { get }
    var sceneTitle: String { get }
}

public extension SceneViewModelType {
    public var identifier: Identifier { return sceneIdentifier }
    public var sceneTitle: String { return "" }
}
