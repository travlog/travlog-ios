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
//        Api().signin(userId: "i@jincode.me", password: "1023").response { response in
//            debugPrint(response)
//        }
//        Api.signin(userId: "hello", password: "world").response { response in
//            print(response)
//        }

//        Api().test().result{ value in
//            print(value)
//        }

        Alamofire.request("https://deposit.tabling.co.kr/api/phones", method: .get).responseJSON { response in
            print(response)
        }
    }

}

