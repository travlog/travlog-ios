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

class ViewController: UIViewController {

    @IBOutlet var inputEmail: MDCTextField!
    @IBOutlet var inputPassword: MDCTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signin(_ sender: Any) {
        let params = [
            "loginId": self.inputEmail.text!,
            "password": self.inputPassword.text!
        ]
        Alamofire.request("http://fobid.synology.me:3000/api/signin", method: .post, parameters:params, encoding:URLEncoding.default).responseJSON { response in
            if let data = response.result.value as? Dictionary<String, Any> {
                if let codeno:Int = data["codeno"] as? Int {
                    switch codeno {
                    case 2000:
                        let vc:UITabBarController = self.storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController
                        self.present(vc, animated: true, completion: nil)
                        return
                    default:
                        break
                    }
                }
            }
//            let alertView = SCLAlertView()
//            alertView.addButton(LString.ok, action: {})
//            alertView.showSuccess(LString.signin, subTitle: LString.signin_error_message)
            SCLAlertView().showTitle(LString.signin_error_message, subTitle: LString.signin, style: .error, closeButtonTitle: LString.ok)
            
//            let alert = UIAlertController(title: "SIGNIN".localized, message: message, preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "OK".localized, style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true)
            
        }
    }

}

