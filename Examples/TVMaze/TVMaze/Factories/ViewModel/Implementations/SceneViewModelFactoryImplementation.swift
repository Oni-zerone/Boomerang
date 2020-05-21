//
//  SceneViewModelFactoryImplementation.swift
//  TVMaze
//
//  Created by Stefano Mondino on 21/05/2020.
//  Copyright © 2020 Synesthesia. All rights reserved.
//

import Foundation

struct SceneViewModelFactoryImplementation: SceneViewModelFactory {
    
    let container: AppDependencyContainer
    
    func menu() -> MenuViewModel {
        return MenuViewModel(itemFactory: container.viewModels.items,
                             routeFactory: container.routeFactory)
    }    


    
//MURRAY IMPLEMENTATION PLACEHOLDER
}
