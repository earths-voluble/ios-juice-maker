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
    case banna
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
    
    func make(_ result: Juice, fruits: FruitStore) -> FruitStore {
        switch self {
        case .strawberry:
            fruits.strawberry -= 16
            return fruits
        case .banna:
            fruits.banana -= 2
            return fruits
        case .kiwi:
            fruits.kiwi -= 2
            return fruits
        case .pineapple:
            fruits.pineapple -= 2
            return fruits
        case .strawberryBanana:
            fruits.strawberry -= 10; fruits.banana -= 1
            return fruits
        case .mango:
            fruits.mango -= 3
            return fruits
        case .mangoKiwi:
            fruits.mango -= 2; fruits.kiwi -= 1
            return fruits
        }
    }
}
