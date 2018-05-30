//
//  SignupNavigationController.swift
//  travlog-ios
//
//  Created by jin on 2018. 5. 4..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit
import MaterialComponents

class SignupNavigationController: UINavigationController {
    
    @IBOutlet var navigationBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.observe(self.navigationItem)
    }
}
