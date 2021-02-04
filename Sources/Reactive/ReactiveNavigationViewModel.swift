//
//  ReactiveNavigationViewModel.swift
//  Satispay
//
//  Created by Andrea Altea on 29/01/2021.
//  Copyright © 2021 Satispay. All rights reserved.
//

import Boomerang
import ReactiveSwift

public protocol ReactiveNavigationViewModel: NavigationViewModel {
    
    var routes: (output: Signal<Route, Never>, input: Signal<Route, Never>.Observer) { get }
}

extension ReactiveNavigationViewModel {
    
    public var onNavigation: (Route) -> Void {
        
        get { return { [weak self] in self?.routes.send(value: $0) } }

        // swiftlint:disable unused_setter_value
        set {}
    }
}
