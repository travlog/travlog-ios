//
//  SignupResultController.swift
//  travlog-ios
//
//  Created by jin on 2018. 5. 4..
//  Copyright © 2018년 travlog. All rights reserved.
//

import UIKit
import Alamofire

class SignupResultController: UIViewController {
    
    var email:String? = nil
    @IBOutlet var inputPassword:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.email!)
    }
    
    @IBAction func signup (_ sender: Any?) {
        let alert = UIAlertController(title: "Submit", message: "success signup", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { (action) in
            self.signupService()
        }))
        self.present(alert, animated: true)
    }
    
    func signupService () {
        let params: Parameters = [
            "email": email!,
            "password": inputPassword.text!
        ]
        Alamofire.request("http://fobid.synology.me:3000/api/signup", method: .post, parameters: params, encoding: URLEncoding.default).responseJSON { (response) in
            print(response)
            self.dismissView()
        }
    }
    
    func dismissView () {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}

//class DismisseSeque: UIStoryboardSegue {
//    override func perform() {
//        self.source.presentingViewController?.dismiss(animated: true, completion: nil)
//    }
//}

