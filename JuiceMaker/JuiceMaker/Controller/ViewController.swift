//
//  JuiceMaker - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fruitStore = FruitStore()
    lazy var juiceMaker = JuiceMaker()

    override func viewDidLoad() {
        let stockViewController = self.storyboard?.instantiateViewController(withIdentifier: "stockViewController")
        super.viewDidLoad()
        stockViewController?.modalPresentationStyle = .fullScreen
        let confirm = UIAlertAction(title: "확인", style: .default)
        let close = UIAlertAction(title: "취소", style: .destructive)

    }
    
    
    @IBAction func makeJuiceBtnTapped(_ sender: UIButton) {
        let stockViewController = self.storyboard?.instantiateViewController(withIdentifier: "stockViewController")

        switch sender.tag {
        case 0:
            let result = juiceMaker.order(Recipe.strawberryBanana)
            if result {
                AlertController.showSuccessAlert(vcToShow: self, 
                                                 preferedStyle: .alert,
                                                 title: "Alert!",
                                                 message: "OK",
                                                 completionHandler: nil
                )
            } else {
                AlertController.showFailAlert(vcToShow: self,
                                              title: "딸바쥬스",
                                              message: "재료가 부족합니다.",
                                              cancelHandler: nil,
                                              completeHandler: { self.performSegue(withIdentifier: "stockSegue", sender: sender)}
                )
              }
        case 1:
            let result = juiceMaker.order(Recipe.mangoKiwi)
            if result {

            } else {

            }
        case 2:
            let result = juiceMaker.order(Recipe.strawberry)
            if result {

            } else {

            }
        case 3:
            let result = juiceMaker.order(Recipe.banana)
            if result {

            } else {

            }
        case 4:
            let result = juiceMaker.order(Recipe.pineapple)
            if result {

            } else {

            }
        case 5:
            let result = juiceMaker.order(Recipe.kiwi)
            if result {

            } else {

            }
        case 6:
            let result = juiceMaker.order(Recipe.mango)
            if result {

            } else {

            }
        default:
            break
        }
    }
    
    private func showStockView() {
        self.present(StockViewController(), animated: true)
    }
        
    
    
}

