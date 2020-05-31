//
//  FirstVCCoordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Usaid Ather on 23/05/2020.
//  Copyright © 2020 Usaid Ather. All rights reserved.
//

import UIKit

protocol SecondVCFlow: class {
    func coordinateToThirdVC()
}

class SecondCoordinator: Coordinator, SecondVCFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboardBundle = Bundle.main
        // let storyboardBundle = Bundle(for: ClassName.self) // if you are not using main application, means may be you are crating a framework or library you can use this statement instead
        let storyboard = UIStoryboard(name: "Main", bundle: storyboardBundle)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        secondViewController.coordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
    
    // MARK: - Flow Methods
    func coordinateToThirdVC() {
        let thirdVCCoordinator = ThirdVCCoordinator(navigationController: navigationController)
        coordinate(to: thirdVCCoordinator)
    }
    
   
}
