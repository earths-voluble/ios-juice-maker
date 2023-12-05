//
//  resultJuice.swift
//  JuiceMaker
//
//  Created by Roh on 12/4/23.
//

import Foundation

enum Juice {
    // 딸기 16
    case strawberry
    // 바나나 2
    case banana
    // 키위 2
    case kiwi
    // 파인애플 2
    case pineapple
    // 딸기 10, 바나나 1
    case strawberryBanana
    // 망고 3
    case mango
    // 망고 2, 키위 1
    case mangoKiwi
    
    private func isEnough(_ numberOfFruit: Int) -> Bool {
        if numberOfFruit < 0 {
           return false
        }
        else {
            return true
        }
    }
    
    func make(_ result: Juice, fruits: FruitStore) throws -> FruitStore {
        switch self {
        case .strawberry:
            if(!isEnough(fruits.strawberry - 16)) {
                throw ErrorHandling.exhaustedFruitsError
            }
            fruits.strawberry -= 16
        case .banana:
            if(!isEnough(fruits.banana - 2)) {
                throw ErrorHandling.exhaustedFruitsError
            }
            fruits.banana -= 2
        case .kiwi:
            if(!isEnough(fruits.banana - 2)) {
                throw ErrorHandling.exhaustedFruitsError
            }
            fruits.kiwi -= 2
        case .pineapple:
            if(!isEnough(fruits.banana - 2)) {
                throw ErrorHandling.exhaustedFruitsError
            }
            fruits.pineapple -= 2
        case .strawberryBanana:
            if(!isEnough(fruits.strawberry - 10) && isEnough(fruits.banana - 1)) {
                throw ErrorHandling.exhaustedFruitsError
            }
            fruits.strawberry -= 10; fruits.banana -= 1
        case .mango:
            if(!isEnough(fruits.mango - 3)) {
                throw ErrorHandling.exhaustedFruitsError
            }
            fruits.mango -= 3
        case .mangoKiwi:
            if(!isEnough(fruits.mango - 2) && isEnough(fruits.kiwi - 1)) {
                throw ErrorHandling.exhaustedFruitsError
            }
            fruits.mango -= 2; fruits.kiwi -= 1
        }
        return fruits
    }
}
