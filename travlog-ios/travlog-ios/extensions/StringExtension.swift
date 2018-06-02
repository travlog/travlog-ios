//
//  StringExtension.swift
//  travlog-ios
//
//  Created by jin on 2018. 6. 2..
//  Copyright © 2018년 travlog. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
