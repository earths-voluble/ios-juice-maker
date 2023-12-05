//
//  ErrorHandling.swift
//  JuiceMaker
//
//  Created by Roh on 12/4/23.
//

enum ErrorHandling: String, Error {
    case exhaustedFruitsError = "재료가 소진되어 쥬스를 만들수가 없습니다."
    case InvalidFruitsError = "메뉴에 없는 쥬스 입니다."
}

