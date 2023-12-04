//
//  resultJuice.swift
//  JuiceMaker
//
//  Created by Roh on 12/4/23.
//

import Foundation

enum resultJuice {
    // 딸기 16
    case strawberryJuice
    // 바나나 2
    case bannaJuice
    // 키위 2
    case kiwiJuice
    // 파인애플 2
    case pineappleJuice
    // 딸기 10, 바나나 1
    case strawberryBananaJuice
    // 망고 3
    case mangoJuice
    // 망고 2, 키위 1
    case mangoKiwiJuice
    
    func make(result: resultJuice) -> Fruits {
        switch self {
        case .strawberryJuice:
            fruits.strawberry -= 16
            return fruits
        case .bannaJuice:
            fruits.banana -= 2
            return fruits
        case .kiwiJuice:
            fruits.kiwi -= 2
            return fruits
        case .pineappleJuice:
            fruits.pineapple -= 2
            return fruits
        case .strawberryBananaJuice:
            fruits.strawberry -= 10; fruits.banana -= 1
            return fruits
        case .mangoJuice:
            fruits.mango -= 3
            return fruits
        case .mangoKiwiJuice:
            fruits.mango -= 2; fruits.kiwi -= 1
            return fruits
        }
    }
}
