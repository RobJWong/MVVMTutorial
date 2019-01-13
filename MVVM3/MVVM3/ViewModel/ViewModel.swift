//
//  ViewModel.swift
//  MVVMTutorial2
//
//  Created by Robert Wong on 1/11/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import Foundation

public class Converter {
    
    let model: Temperature
//    var convertedF: Double?
//    var convertedC: Double?
//    var convertedK: Double?
    
    init(model: Temperature) {
        self.model = model
    }
    
    var toFahrenheit: Double {
        if model.degrees == .c {
            //from c to f
            if let celsius = model.celsius {
                return (celsius * 9/5) + 32
            }
        } else if model.degrees == .k {
            if let kelvin = model.kelvin {
                return (kelvin - 273.15) * (9/5) + 32
            }
        }
        return (0.0)
    }
    
    var toCelsius: Double {
        if model.degrees == .f {
            //from c to f
            if let fahrenheit = model.fahrenheit {
                return (fahrenheit - 32) * (5/9)
            }
        } else if model.degrees == .k {
            if let kelvin = model.kelvin {
                return (kelvin - 273.15)
            }
        }
        return (0.0)
    }
    
    var toKelvin: Double {
        if model.degrees == .f {
            //from c to f
            if let fahrenheit = model.fahrenheit {
                return (fahrenheit - 32) * (5/9) + 273.15
            }
        } else if model.degrees == .c {
            if let celsius = model.celsius {
                return (celsius + 273.15)
            }
        }
        return (0.0)
    }
    
//    func convertF() {
//        if let fahrenheit = model.fahrenheit {
//            convertedC = (fahrenheit - 32) * (5/9)
//            convertedK = (fahrenheit - 32) * (5/9) + 273.15
//        }
//    }
//
//    func convertC() {
//        if let celsius = model.celsius {
//            convertedF = (celsius * 9/5) + 32
//            convertedK = celsius + 273.15
//        }
//    }
//
//    func convertK() {
//        if let kelvin = model.kelvin {
//            convertedF = (kelvin - 273.15) * (9/5) + 32
//            convertedC = (kelvin - 273.15)
//        }
//    }
}
