//
//  Extension.swift
//  JuiceMaker
//
//  Created by Roh on 12/20/23.
//

import UIKit

extension StoreViewController {
    func checkSuccess(_ result: Result<Bool, JuiceMakerErrors>) -> Bool {
        switch result {
        case .success(_):
            return true
        case .failure(_):
            return false
        }
    }
    
    func showAlert(_ isDone: Bool, _ recipeName: String) {
        if isDone {
            AlertManager.setAlert(
                vcToShow: self,
                preferredStyle: UIAlertController.Style.alert,
                title: "\(recipeName) 쥬스 나왔습니다! 맛있게 드세요!",
                message: "",
                buttonActions: [dismissAlertAction]
            )
        }
        else {
            AlertManager.setAlert(
                vcToShow: self,
                preferredStyle: UIAlertController.Style.alert,
                title: "재료가 모자라요. 재고를 수정할까요?",
                message: "",
                buttonActions: [acceptAlertAction, cancelAlertAction]
            )
        }
    }
}
