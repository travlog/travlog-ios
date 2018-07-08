//
//  ViewController.swift
//  travlog-ios
//
//  Created by jin on 2018. 5. 1..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit
import MaterialComponents
import Alamofire
import SCLAlertView
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    
    typealias StoreSubscriberStateType = AppState

    @IBOutlet var inputEmail: MDCTextField!
    @IBOutlet var inputPassword: MDCTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        store.subscribe(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showSignupView () {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignupNavigationController") as! UINavigationController
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    func newState(state: AppState) {
        print("newState")
        print("\(state.name), \(state.username), \(state.userId)")
    }

    @IBAction func signin(_ sender: Any) {
        self.showMainView()
        let params = [
            "loginId": self.inputEmail.text!,
            "password": self.inputPassword.text!
        ]

        let appearance = SCLAlertView.SCLAppearance (
            showCloseButton: false
        )
        
        let alert: SCLAlertViewResponder = SCLAlertView(appearance: appearance).showWait("로그인", subTitle: "로그인중입니다")
        Service.shared.api(API_LOGIN).method(.post).params(params).request { response in
            print("API_LOGIN response : \(response)")
        }
        
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
//                alert.close()
//                SCLAlertView().showTitle(LString.signin_error_message, subTitle: LString.signin, style: .error, closeButtonTitle: LString.ok)
//            })

    }
    
    func showMainView() {
        let vc:UINavigationController = self.storyboard?.instantiateViewController(withIdentifier: "MainNavigationController") as! UINavigationController
        self.present(vc, animated: true, completion: nil)
    }

}

