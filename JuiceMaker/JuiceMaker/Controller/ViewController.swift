//
//  JuiceMaker - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnJuiceOrder(_ choice: UIButton) {
        print(choice.tag)
    }
    @IBAction func btnMoveStore(_ sender: Any) {
        guard let StoreViewController = self.storyboard?.instantiateViewController(withIdentifier: "StoreViewController") else {return}
        self.navigationController?.pushViewController(StoreViewController, animated: true)
    }
}

