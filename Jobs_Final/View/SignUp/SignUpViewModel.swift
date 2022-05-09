//
//  SignUpViewModel.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 19/04/2022.
//

import Foundation

enum LoginStatut {
    case signUp
    case signIn
}

final class SignUpViewModel {
    
   
    // MARK: - Properties
    private let signUpVC = SignUpViewController()
    
    // MARK: - Output // sort les infos vers le VC grace aux closures
    
    var state : ((LoginStatut) -> Void)? 

    // MARK: - Input : recoit les indication du viewController
    
    func checkIsEmpty(){
        guard let email = signUpVC.mailTextField.text, !email.isEmpty ,
              let password = signUpVC.passwordTextField.text, !password.isEmpty,
              let name = signUpVC.nameTExtField.text, !name.isEmpty,
              let firstname = signUpVC.firstNameTextField.text, !firstname.isEmpty else {
            
            return
        }
    }
    
}
