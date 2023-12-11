//
//  JuiceMaker - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var strawberryLabel: UILabel!
    @IBOutlet weak var bananaLabel: UILabel!
    @IBOutlet weak var pineappleLabel: UILabel!
    @IBOutlet weak var kiwiLabel: UILabel!
    @IBOutlet weak var mangoLabel: UILabel!
    
    private lazy var fruitsLabel: [String : UILabel] = [
        Fruit.strawberry.rawValue : strawberryLabel,
        Fruit.banana.rawValue : bananaLabel,
        Fruit.pineapple.rawValue : pineappleLabel,
        Fruit.kiwi.rawValue : kiwiLabel,
        Fruit.mango.rawValue : mangoLabel
    ]
    private let store = FruitStore()
    private lazy var juiceMaker = JuiceMaker(store)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.initializeFruit()
        initView()
    }
    
    @IBAction func btnJuiceOrder(_ choice: UIButton) {
        let pressedButton = choice.tag
        var choicedJuice : Recipe
        switch pressedButton {
        case 1:
            choicedJuice = Recipe.strawberryBanana
        case 2:
            choicedJuice = Recipe.mangoKiwi
        case 3:
            choicedJuice = Recipe.strawberry
        case 4:
            choicedJuice = Recipe.banana
        case 5:
            choicedJuice = Recipe.pineapple
        case 6:
            choicedJuice = Recipe.kiwi
        case 7:
            choicedJuice = Recipe.mango
        default:
            choicedJuice = Recipe.mango
        }
        setFruitTextView(choicedJuice)
    }
    
    @IBAction func btnMoveStore(_ sender: Any) {
        guard let StoreViewController = self.storyboard?.instantiateViewController(withIdentifier: "StoreViewController") else {return}
        self.navigationController?.pushViewController(StoreViewController, animated: true)
    }
    
    
    private func initView() {
        self.store.fruits.forEach { fruit, fruitValue in
            guard let uiLabel = fruitsLabel[fruit],
                  let FruitValue = self.store.fruits[fruit]
            else {
                return
            }
            uiLabel.text = String(FruitValue)
        }
    }
    
    private func setFruitTextView(_ recipe: Recipe) {
        juiceMaker.order(recipe)
        self.store.fruitsFlag.forEach { fruit, isPushed in
            guard let uiLabel = fruitsLabel[fruit],
                  let FruitValue = self.store.fruits[fruit],
                  isPushed
            else {
                return
            }
            uiLabel.text = String(FruitValue)
            self.store.resetFlag()
        }
    }
}

