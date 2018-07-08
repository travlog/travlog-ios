//
//  Service.swift
//  travlog-ios
//
//  Created by jin on 2018. 5. 1..
//  Copyright © 2018년 travlog. All rights reserved.
//

import Foundation
import Alamofire

class Service {
    static var shared: Service = Service()
    
    let HOST = "http://13.125.111.118"
    let PORT = "3000"
    
    var api: String!
    var method = Alamofire.HTTPMethod.get
    var params:[String: Any]?
    
    func api(_ api: String) -> Self {
        self.api = api
        return self
    }

    func method(_ method: Alamofire.HTTPMethod) -> Self {
        self.method = method
        return self
    }

    func params(_ data: [String: Any]) -> Self {
        self.params = data
        return self
    }

    func request(resultdata:@escaping(([String: Any]) -> Void)) {
        
        var makeURL = "\(HOST):\(PORT)"
        makeURL += api
        print(" makeURL : \(makeURL)")
        
        Alamofire.request(makeURL, method: self.method, parameters:self.params, encoding:URLEncoding.default).responseJSON { response in
            if let data = response.result.value as? Dictionary<String, Any> {
                resultdata(data)
            }
            
        }
    }
}
