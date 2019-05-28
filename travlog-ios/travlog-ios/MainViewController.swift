//
//  MainViewController.swift
//  travlog-ios
//
//  Created by jin on 2018. 6. 2..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit
import MaterialComponents

class MainViewController: UIViewController {
    
    @IBOutlet weak var mBottomAppBarView: MDCBottomAppBarView!
    
    var mSaveItem: UIBarButtonItem!
    
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
        
        self.mBottomAppBarView.floatingButton.backgroundColor = UIColor(rgb: 0xff96a0)
        self.mBottomAppBarView.floatingButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        self.mBottomAppBarView.floatingButton.setTitle("+", for: .normal)
        self.mBottomAppBarView.floatingButton.addTarget(self, action: #selector(addPlansClicked(_:)), for: .touchUpInside)
    }
    
    //MARK: - IBAction
    @objc func addPlansClicked(_ sender: UIButton) {
        let vc: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "CREATE_TRAVLOG_VC"))!
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
