//
//  MainViewController.swift
//  travlog-ios
//
//  Created by jin on 2018. 6. 2..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
