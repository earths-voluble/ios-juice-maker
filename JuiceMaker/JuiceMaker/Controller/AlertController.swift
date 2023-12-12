//
//  AlertController.swift
//  JuiceMaker
//
//  Created by 이보한 on 2023/12/12.
//

import UIKit

struct AlertController {
    static func showSuccessAlert(vcToShow: UIViewController?,
                                 preferedStyle: UIAlertController.Style = .alert,
                                 title: String = "",
                                 message: String = "",
                                 complteTitle: String = "확인",
                                 completionHandler: (() -> Void)? = nil){
        guard let currentVC = vcToShow else {
            completionHandler?()
            return
        }
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: preferedStyle)
        let completeAction = UIAlertAction(title: complteTitle, style: .default) {action in
            completionHandler?()
        }
        alert.addAction(completeAction)
        currentVC.present(alert, animated: true, completion: nil)}
    
    static func showFailAlert(vcToShow: UIViewController?,
                              preferedStyle: UIAlertController.Style = .alert,
                              title: String = "",
                              message: String = "",
                              cancelTitle: String = "취소",
                              completeTitle: String = "확인",
                              cancelHandler: (() -> Void)?,
                              completeHandler: (() -> Void)?){
        guard let currentVC = vcToShow else {
            completeHandler?()
            return
        }
         let alert = UIAlertController(title: title, message: message, preferredStyle: preferedStyle)
         let cancelAction = UIAlertAction(title: cancelTitle, style: .cancel) { action in
         cancelHandler?()
         }
         let complteAction = UIAlertAction(title: completeTitle, style: .default) { action in
         completeHandler?()
         }
         
         alert.addAction(cancelAction)
         alert.addAction(complteAction)
         
         currentVC.present(alert, animated: true, completion: nil)}
}
