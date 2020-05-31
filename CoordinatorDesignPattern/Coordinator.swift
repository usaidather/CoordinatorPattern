//
//  Coordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Usaid Ather on 23/05/2020.
//  Copyright © 2020 Usaid Ather. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}
