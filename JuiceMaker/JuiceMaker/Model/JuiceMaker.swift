//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 쥬스 메이커 타입
struct JuiceMaker {
    
    private let store: FruitStore
    
    init(_ store: FruitStore) {
        self.store = store
        self.store.initializeFruit()
    }
    
    func showMenu() {
        print("어서오세요 아래 매뉴중 하나를 선택해주세요!\n딸바쥬스, 망키쥬스, 딸기쥬스, 바나나쥬스, 파인애플쥬스, 키위쥬스, 망고쥬스")
    }
    
    func order(_ recipe: Recipe) {
        print("주문하신 쥬스는 \(recipe) 입니다" )
        do {
            try takeOrder(recipe)
        } catch JuiceMakerErrors.orderFail(let recipe) {
            print("\(recipe) 주문에 실패 했습니다...")
            print("\(self.store.fruits)")
        } catch {
            
        }
    }
    
    func takeOrder(_ kind: Recipe) throws {
        let splittedIngredientArray = kind.rawValue.split(separator: ",")
        if splittedIngredientArray.count == 1 {
            let strsplittedIngredientArray = String(splittedIngredientArray[0])
            guard let fruitsStock = store.fruits[strsplittedIngredientArray],
                  let recipe = store.recipes[strsplittedIngredientArray],
                    fruitsStock >= recipe[0]
            else {
                throw JuiceMakerErrors.orderFail(kind)
            }
            self.store.fruits[String(splittedIngredientArray[0])] = fruitsStock - recipe[0]
            self.store.fruitsFlag[strsplittedIngredientArray] = true
        } else {
            try splittedIngredientArray.enumerated().forEach { index, fruit in
                guard let fruitsStock = store.fruits[String(fruit)],
                      let recipe = store.recipes[kind.rawValue],
                      fruitsStock >= recipe[index] else {
                    throw JuiceMakerErrors.orderFail(kind)
                }
                self.store.fruits[String(fruit)] = fruitsStock - recipe[index]
                self.store.fruitsFlag[String(fruit)] = true
            }
        }
    }
}
