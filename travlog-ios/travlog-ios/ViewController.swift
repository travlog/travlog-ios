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
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
        )
        let alert: SCLAlertViewResponder = SCLAlertView(appearance: appearance).showWait("로그인", subTitle: "로그인중입니다")
        Alamofire.request("http://fobid.synology.me:3000/api/signin", method: .post, parameters:params, encoding:URLEncoding.default).responseJSON { response in
            if let data = response.result.value as? Dictionary<String, Any> {
                if let codeno:Int = data["codeno"] as? Int {
                    switch codeno {
                    case 2000:
                        alert.close()
                        let vc:UITabBarController = self.storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController
                        self.present(vc, animated: true, completion: nil)
                        return
                    default:
                        break
                    }
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
                alert.close()
                SCLAlertView().showTitle(LString.signin_error_message, subTitle: LString.signin, style: .error, closeButtonTitle: LString.ok)
            })
            
        }
    }

}

