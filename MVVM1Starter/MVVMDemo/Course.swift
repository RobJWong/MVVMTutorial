//
//  Course.swift
//  MVVMDemo
//
//  Created by Robert Wong on 1/10/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import Foundation

struct Course: Decodable {
    
    let id: Int
    let name: String
    let number_of_lessons: Int
}
