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
        juiceMaker.shakeFruitsfor(juice: resultJuice.bannaJuice)
    }
    
    @IBAction func btMangoKiwi(_ sender: Any) {
        print("test2")
    }
    
    @IBAction func btStrawBerry(_ sender: Any) {
        print("test3")
    }
    
    @IBAction func btBanna(_ sender: Any) {
        print("test4")
    }
    
    @IBAction func btPineapple(_ sender: Any) {
        print("test5")
    }
    
    @IBAction func btKiwi(_ sender: Any) {
        print("test6")
    }
    @IBAction func btMango(_ sender: Any) {
        print("test7")
    }
}

