//
//  JuiceMaker - FruitStore.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 과일 저장소 타입
final class FruitStore {
    
    var fruits: [String : Int] = [:]
    
    func initializeFruit() {
        Fruit.allCases.forEach { fruits[$0.rawValue] = 10 }
    }
    
    var fruitsFlag = [
        Recipe.strawberry.rawValue: false,
        Recipe.banana.rawValue: false,
        Recipe.pineapple.rawValue: false,
        Recipe.kiwi.rawValue: false,
        Recipe.mango.rawValue: false,
    ]
    
    var recipes = [
        Recipe.strawberry.rawValue: [16],
        Recipe.banana.rawValue: [2],
        Recipe.kiwi.rawValue: [3],
        Recipe.pineapple.rawValue: [2],
        Recipe.strawberryBanana.rawValue: [10, 1],
        Recipe.mango.rawValue: [3],
        Recipe.mangoKiwi.rawValue: [2, 1]
    ]
    
    func resetFlag() {
        
    
        self.fruitsFlag.keys.forEach { fruits in
            guard let flag = fruitsFlag["strawberry"] else {
                return
            }
            flag.value = false
        }
        
//        self.fruitsFlag.keys.forEach { fruits in
//            if self.fruitsFlag[key: fruits] == nil {
//                print("error")
//            }
//            else {
//                self.fruitsFlag[fruits] = false
//            }
//        }
//        self.fruitsFlag.keys.forEach { fruits in
//            self.fruitsFlag[fruits] = false
//        }
    }
}

extension Dictionary {
    subscript(safe: String) -> Recipe? {
        return safe ~= safe ? self[safe] : nil
    }
}
