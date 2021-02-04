//
//  TableView+Reactive.swift
//  Satispay
//
//  Created by Andrea Altea on 29/01/2021.
//  Copyright © 2021 Satispay. All rights reserved.
//

import Foundation
import UIKit
import ReactiveSwift
#if !COCOAPODS
import Boomerang
#endif

extension Reactive where Base: UITableView {
    
    @discardableResult
    func reloaded(by viewModel: ReactiveListViewModel,
                  dataSource tableViewDataSource: TableViewDataSource) -> Disposable? {
        
        self.reloadData <~ viewModel.sectionsProperty.producer
            .observe(on: UIScheduler())
            .map { _ in () }
    }
    
    @discardableResult
    func animated(by viewModel: ReactiveListViewModel, dataSource tableViewDataSource: TableViewDataSource) -> Disposable? {
        
        self.reloadData <~ viewModel.sectionsProperty.producer
            .observe(on: UIScheduler())
            .map { _ in () }
    }
}
