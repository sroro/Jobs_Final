//
//  Alert.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 03/05/2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func alertIsEmpty() {
        let alertError = UIAlertController(title: "Erreur", message: "Remplisez les champs vide", preferredStyle: .alert)
        alertError.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertError, animated:true)
    }
    
    func alertConnection() {
        let alertError = UIAlertController(title: "Erreur", message: "Connection échouée", preferredStyle: .alert)
        alertError.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertError, animated:true)
    }

    
}
