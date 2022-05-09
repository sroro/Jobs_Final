//
//  SignInViewController.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 11/04/2022.
//

import UIKit
import FirebaseAuth




class SignInViewController: UIViewController {
    
    // verifier si l'utilisateur existe
    // si oui, passer page offres
    // si non, creer alerte  envoyer page inscription
    
    // MARK: - Properties
    
    var viewModel = SignInViewModel()
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Actions
    
    @IBAction func connectionButton(_ sender: Any) {
        guard let email = mailTextField.text, !email.isEmpty ,
              let password = passwordTextField.text, !password.isEmpty else {
            alertIsEmpty()
            return
        }
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
        }
    }
    
    
    //MARK: - Methods
    
    
    
    
}
