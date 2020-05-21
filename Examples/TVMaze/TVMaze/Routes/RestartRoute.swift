//
//  RestartRoute.swift
//  Demo
//
//  Created by Stefano Mondino on 08/11/2019.
//  Copyright © 2019 Synesthesia. All rights reserved.
//

import Foundation
import UIKitBoomerang
import UIKit

struct RestartRoute: UIKitRoute {

    let createViewController: () -> UIViewController?

    init(createScene: @escaping () -> UIViewController?) {
        self.createViewController = createScene
    }

    func execute<T: UIViewController>(from scene: T?) {

        //TODO Dismiss all modals
        let window = (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.window


        window?.rootViewController = createViewController()
        if window?.isKeyWindow == false {
            window?.makeKeyAndVisible()
        }
    }
}
