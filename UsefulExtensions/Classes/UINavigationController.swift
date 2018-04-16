//
//  UINavigationController.swift
//  dafi
//
//  Created by dev on 02.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import UIKit

public extension UINavigationController {

    func pushViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        self.pushViewController(viewController, animated: animated)

        guard animated, let coordinator = transitionCoordinator else {
            completion()
            return
        }
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }

    func popViewController(_ animated: Bool, completion: @escaping () -> Void) {
        self.popViewController(animated: animated)

        guard animated, let coordinator = transitionCoordinator else {
            completion()
            return
        }
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }

}


