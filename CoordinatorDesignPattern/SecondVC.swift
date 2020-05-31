//
//  SecondVC.swift
//  CoordinatorDesignPattern
//
//  Created by Usaid Ather on 23/05/2020.
//  Copyright © 2020 Usaid Ather. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    var coordinator: SecondVCFlow?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func secondButtonTapped(_ sender: Any) {
        coordinator?.coordinateToThirdVC()
    }
}
