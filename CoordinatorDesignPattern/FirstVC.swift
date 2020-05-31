//
//  FirstVC.swift
//  CoordinatorDesignPattern
//
//  Created by Usaid Ather on 23/05/2020.
//  Copyright © 2020 Usaid Ather. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    var coordinator: FirstVCFlow?

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func buttonTapped(_ sender: Any) {
        coordinator?.coordinateToSecondVC()
    }
    
}
