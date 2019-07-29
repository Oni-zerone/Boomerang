//
//  ShowItemViewModel.swift
//  Boomerang
//
//  Created by Stefano Mondino on 05/02/2019.
//  Copyright © 2019 Synesthesia. All rights reserved.
//

import Foundation
import Boomerang
import RxCocoa
import RxSwift

class ShowItemViewModel: IdentifiableViewModelType {
    
    var identifier: Identifier 
    var title: String
    var model: ModelType
    var image: Observable<Image?>
    init (model: Show, identifier: Identifiers.Views = .show) {
        self.model = model
        self.identifier = identifier
        self.title = model.name
//        self.image = .just(nil)
        self.image = (model.image?.medium?.image() ?? .just(Image()))
    }
}