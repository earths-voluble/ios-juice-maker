//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    var juiceMaker : JuiceMaker = JuiceMaker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btStrawBerryBanna(_ sender: Any) {
        juiceMaker.order(Juice.strawberryBanana)
    }
    
    @IBAction func btMangoKiwi(_ sender: Any) {
        juiceMaker.order(Juice.mangoKiwi)
    }
    
    @IBAction func btStrawBerry(_ sender: Any) {
        juiceMaker.order(Juice.strawberry)
    }
    
    @IBAction func btBanna(_ sender: Any) {
        juiceMaker.order(Juice.banna)
    }
    
    @IBAction func btPineapple(_ sender: Any) {
        juiceMaker.order(Juice.pineapple)
    }
    
    @IBAction func btKiwi(_ sender: Any) {
        juiceMaker.order(Juice.kiwi)
    }
    @IBAction func btMango(_ sender: Any) {
        juiceMaker.order(Juice.mango)
    }
}

