//
//  ReactiveListViewModel.swift
//  Satispay
//
//  Created by Andrea Altea on 29/01/2021.
//  Copyright © 2021 Satispay. All rights reserved.
//

import Boomerang
import ReactiveSwift

protocol ReactiveListViewModel: ListViewModel, ReactiveViewModel {
    
    var sectionsProperty: MutableProperty<[Section]> { get }
}

extension ReactiveListViewModel {
    
    var sections: [Section] {

        get { sectionsProperty.value }

        set { sectionsProperty.modify { $0 = newValue } }
    }
    
    var onUpdate: () -> Void {
        get { return {} }
        // swiftlint:disable unused_setter_value
        set { }
    }
}

extension Reactive where Base: ReactiveListViewModel {
    
    var sections: SignalProducer<[Section], Never> {
        return base.sectionsProperty.producer
    }
}
