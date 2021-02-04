//
//  ReactiveViewModel.swift
//  Satispay
//
//  Created by Andrea Altea on 01/02/2021.
//  Copyright © 2021 Satispay. All rights reserved.
//

import Boomerang
import ReactiveSwift

protocol ReactiveViewModel: Boomerang.ViewModel {
    
    var disposable: Disposable? { get }
}
