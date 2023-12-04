//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 쥬스 메이커 타입
struct JuiceMaker {
    
    var fruitStore: FruitStore
    
    init() {
        fruitStore = FruitStore()
    }
    
    mutating func order(_ juice: Juice) {
        self.fruitStore = juice.make(juice, fruits: fruitStore)
        showJuice()
    }
    private func showJuice() {
        print("banana : ", fruitStore.banana)
        print("kiwi : ", fruitStore.kiwi)
        print("mango : ", fruitStore.mango)
        print("pineapple : ", fruitStore.pineapple)
        print("strawberry : ", fruitStore.strawberry)
    }
    
    private func make() {
        
    }
}

