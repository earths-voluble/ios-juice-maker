//
//  StoreViewController.swift
//  JuiceMaker
//
//  Created by Roh on 12/11/23.
//

import UIKit

class StoreViewController: UIViewController {

    @IBOutlet weak var strawberryLabel: UILabel!
    @IBOutlet weak var bananaLabel: UILabel!
    @IBOutlet weak var pineappleLabel: UILabel!
    @IBOutlet weak var kiwiLabel: UILabel!
    @IBOutlet weak var mangoLabel: UILabel!
    
    let store = FruitStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        strawberryLabel.sizeToFit()
        bananaLabel.sizeToFit()
        pineappleLabel.sizeToFit()
        kiwiLabel.sizeToFit()
        mangoLabel.sizeToFit()
    }
    
    private func initView() {
        store.fruits.keys.forEach{ fruit in
            
        }
    }
    
    @IBAction func btnSupplyFruits(_ sender: UIStepper, _ choice: UIButton) {
        print(sender.value)
        print(choice)
    }
    
    
}
