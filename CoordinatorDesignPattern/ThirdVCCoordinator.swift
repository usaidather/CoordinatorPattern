//
//  FirstVCCoordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Usaid Ather on 23/05/2020.
//  Copyright © 2020 Usaid Ather. All rights reserved.
//

import UIKit

//protocol ThirdVCCordinator: class {
//    func coordinateToThirdVC()
//}

class ThirdVCCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboardBundle = Bundle.main
        // let storyboardBundle = Bundle(for: ClassName.self) // if you are not using main application, means may be you are crating a framework or library you can use this statement instead
        let storyboard = UIStoryboard(name: "Main", bundle: storyboardBundle)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdVC
//        firstVC.coordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
    
//    // MARK: - Flow Methods
//    func coordinateToThirdVC() {
//        let secondCoordinator = TabBarCoordinator(navigationController: navigationController)
//        coordinate(to: secondCoordinator)
//    }
//
   
}
