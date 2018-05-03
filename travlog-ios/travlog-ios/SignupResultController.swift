//
//  SignupResultController.swift
//  travlog-ios
//
//  Created by jin on 2018. 5. 4..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit

class SignupResultController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

class DismisseSeque: UIStoryboardSegue {
    override func perform() {
        self.source.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
