//
//  SignUpViewController.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 11/04/2022.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
   // MARK: - Outlets
    
    @IBOutlet weak var nameTExtField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // MARK: - Properties
    
//    private let viewModel = SignUpViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    
    @IBAction func createProfilButton(_ sender: UIButton) {
        checkIsEmpty()
        Auth.auth().createUser(withEmail: mailTextField.text!, password: passwordTextField.text!) { authResult, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
        }
        let profile = createProfile()
        performSegue(withIdentifier: "segueToProfile", sender: profile)
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "segueToProfile" {
            let profileVC = segue.destination as? ProfilViewController
            let profile = sender as? ProfileUser
            profileVC?.profileInformations = profile
        }
        
    }
    
    // MARK: - Properties
    
//    private let signUpViewModel: SignUpViewModel = .init()
    
    //MARK: - Methods
    
    // essayer mettre dans ViewModel
    func createProfile() -> ProfileUser {
        
        let name = nameTExtField.text!
        let firstName = firstNameTextField.text!
        let mail = mailTextField.text!
        let password = passwordTextField.text!
        
        return ProfileUser(name: name, firstName: firstName, mail: mail, password: password)
    }
    
    func checkIsEmpty(){
        guard let email = mailTextField.text, !email.isEmpty ,
              let password = passwordTextField.text, !password.isEmpty,
              let name = nameTExtField.text, !name.isEmpty,
              let firstname = firstNameTextField.text, !firstname.isEmpty else {
            
            alertConnection()
            return
        }
    }
    
   
    
}
