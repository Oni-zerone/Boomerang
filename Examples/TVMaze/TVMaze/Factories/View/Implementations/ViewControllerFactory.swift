//
//  ViewControllerFactory.swift
//  TVMaze
//
//  Created by Stefano Mondino on 21/05/2020.
//  Copyright © 2020 Synesthesia. All rights reserved.
//

import Foundation
import UIKit
import Boomerang
import Pax

typealias Scene = UIViewController

struct ViewControllerFactory: SceneFactory {

    let container: AppDependencyContainer
    let viewFactory: UIViewFactory
    let cellFactory: UICollectionViewCellFactory
    init(container: AppDependencyContainer) {
        self.container = container
        self.viewFactory = UIViewFactory()
        self.cellFactory = UICollectionViewCellFactory(viewFactory: viewFactory)
    }

    private func name(from layoutIdentifier: LayoutIdentifier) -> String {
        let identifier = layoutIdentifier.identifierString
        return identifier.prefix(1).uppercased() + identifier.dropFirst() + "ViewController"
    }


    func root() -> Scene {
        let pax = Pax()
        pax.setMainViewController(show(viewModel: container.viewModels.scenes.show()))
        let menu = self.menu()
        menu.pax.menuWidth = 250
        pax.setViewController(menu, at: .left)

        return pax
    }

    func menu() -> Scene {
        let viewModel = container.viewModels.scenes.menu()

        return MenuViewController(nibName: name(from: viewModel.layoutIdentifier),
                                  viewModel: viewModel,
                                  collectionViewCellFactory: cellFactory)
    }

    
func show(viewModel: ShowViewModel) -> Scene {
        return ShowViewController(nibName: name(from: viewModel.layoutIdentifier),
                                   	viewModel: viewModel,
                                   	collectionViewCellFactory: cellFactory)
    }
    
    
//MURRAY IMPLEMENTATION PLACEHOLDER

}