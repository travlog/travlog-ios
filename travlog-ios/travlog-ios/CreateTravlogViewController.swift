//
//  CreateTravlogViewController.swift
//  travlog-ios
//
//  Created by Bora on 28/05/2019.
//  Copyright © 2019 travlog. All rights reserved.
//

import UIKit

class CreateTravlogViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let saveItem = UIBarButtonItem(title: "만들기", style: .plain, target: self, action: #selector(saveClicked))
        navigationItem.rightBarButtonItem = saveItem
    }
    
    //MARK: - IBAction
    @objc func saveClicked() {
        print("saveClicked")
    }
}
