//
//  ViewController.swift
//  MVVMTutorial2
//
//  Created by Robert Wong on 1/11/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputF: UITextField!
    @IBOutlet weak var inputC: UITextField!
    @IBOutlet weak var inputK: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func convertF(_ sender: Any) {
        guard let inputFString = inputF.text else { return }
        let viewModel = Converter(model: Temperature(fahrenheit: Double(inputFString)!, celsius: 0.0, kelvin: 0.0, degrees: .f))
        inputC.text = String(viewModel.toCelsius)
        inputK.text = String(viewModel.toKelvin)
    }
    @IBAction func convertC(_ sender: Any) {
        guard let inputCString = inputC.text else { return }
        let viewModel = Converter(model: Temperature(fahrenheit: 0.0, celsius: Double(inputCString)!, kelvin: 0.0, degrees: .c))
        inputF.text = String(viewModel.toFahrenheit)
        inputK.text = String(viewModel.toKelvin)
    }
    @IBAction func convertK(_ sender: Any) {
        guard let inputKString = inputK.text else { return }
        let viewModel = Converter(model: Temperature(fahrenheit: 0.0, celsius: 0.0, kelvin: Double(inputKString)!, degrees: .k))
        inputF.text = String(viewModel.toFahrenheit)
        inputC.text = String(viewModel.toCelsius)
    }
}

