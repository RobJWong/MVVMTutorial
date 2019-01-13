//
//  Helpers.swift
//  MVVMTutorial
//
//  Created by Robert Wong on 1/10/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import Foundation

class Helpers {
    
    public var birthday: Date {
        let birthday = Date(timeIntervalSinceNow: (-2 * 86400 * 366))
        return birthday
    }
    
}
