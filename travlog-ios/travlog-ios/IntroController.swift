//
//  IntroController.swift
//  travlog-ios
//
//  Created by jin on 2018. 7. 5..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit
import MaterialComponents

class IntroController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SignupSegue" {
            if let vc = segue.destination as? ViewController {
                vc.showSignupView()
            }
        }
//        if let vc = segue.destination as? SignupResultController {
//            vc.email = self.inputEmail.text!
//        }
    }
}
