//
//  ViewController.swift
//  MVVMTutorial
//
//  Created by Robert Wong on 1/7/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var adoptionFeeLabel: UILabel!
    @IBOutlet weak var monsterImage: UIImageView!
    
    var viewModel = PetViewModel(pet: Pet(name: "Stuart", birthday: Helpers().birthday, rarity: .veryRare, image: UIImage(named: "stuart")!))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        monsterImage.image = viewModel.image
        nameLabel.text = viewModel.name
        ageLabel.text = viewModel.ageText
        adoptionFeeLabel.text = viewModel.adoptionFeeText
    }
    
}

