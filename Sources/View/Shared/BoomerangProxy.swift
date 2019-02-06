//
//  BoomerangProxy.swift
//  Boomerang
//
//  Created by Stefano Mondino on 20/01/2019.
//  Copyright © 2019 Synesthesia. All rights reserved.
//

import Foundation

public struct Boomerang<Base> {
    public var base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol BoomerangCompatible: class {
    associatedtype Base
    static var boomerang: Boomerang<Base>.Type { get set }
    var boomerang: Boomerang<Base> { get set }
}

extension BoomerangCompatible {
    public static var boomerang: Boomerang<Self>.Type {
        get {
            return Boomerang<Self>.self
        }
        set {
            
        }
        
    }
    public var boomerang: Boomerang <Self> {
        get { return Boomerang(self) }
        set { }
    }
}

