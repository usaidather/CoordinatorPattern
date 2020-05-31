//
//  FirstVCCoordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Usaid Ather on 23/05/2020.
//  Copyright © 2020 Usaid Ather. All rights reserved.
//

import UIKit

protocol FirstVCFlow: class {
    func coordinateToSecondVC()
}

class FirstVCCoordinator: Coordinator, FirstVCFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboardBundle = Bundle.main
                
                let storyboard = UIStoryboard(name: "Main", bundle: storyboardBundle)
                let firstVC = storyboard.instantiateViewController(withIdentifier: "FirstVC") as! FirstVC
                firstVC.coordinator = self
        
                navigationController.pushViewController(firstVC, animated: true)
    }
    
    // MARK: - Flow Methods
    func coordinateToSecondVC() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
    }
}
