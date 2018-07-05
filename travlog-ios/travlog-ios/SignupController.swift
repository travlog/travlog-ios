//
//  SignupController.swift
//  travlog-ios
//
//  Created by jin on 2018. 5. 3..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit
import MaterialComponents

class SignupController: UIViewController {

    let appBar = MDCAppBar()
    @IBOutlet var inputEmail:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func dismissView (_ sender: Any?) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SignupResultController {
            vc.email = self.inputEmail.text!
        }
    }
}
