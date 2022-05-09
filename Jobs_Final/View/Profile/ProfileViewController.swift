//
//  ProfilViewController.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 13/04/2022.
//

import UIKit

class ProfilViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var nameCVLabel: UILabel!
    @IBOutlet weak var nameVideoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var diplomeTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = profileInformations?.name
        firstNameLabel.text = profileInformations?.firstName
        mailTextField.text = profileInformations?.mail
        passwordTextField.text = profileInformations?.password
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
  
    @IBAction func addCVButton(_ sender: UIButton) {
    }
    @IBAction func addVideoButton(_ sender: UIButton) {
    }
    @IBAction func deconnexionButton(_ sender: UIButton) {
    }
    
    //MARK: - Properties
    
    private let profileViewModel = ProfileViewModel()
    
    var profileInformations : ProfileUser? // tableau pour recevoir informations de la page signUP
    
    //MARK: - Methods
}

