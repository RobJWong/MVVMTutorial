//
//  Model.swift
//  MVVMTutorial2
//
//  Created by Robert Wong on 1/11/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import Foundation

struct Temperature {
    
    var fahrenheit: Double?
    var celsius: Double?
    var kelvin: Double?
    var degrees: Degrees
    
    public enum Degrees {
        case f
        case c
        case k
    }
    
    init(fahrenheit: Double, celsius: Double, kelvin: Double, degrees: Degrees) {
        self.fahrenheit = fahrenheit
        self.celsius = celsius
        self.kelvin = kelvin
        self.degrees = degrees
    }
}
