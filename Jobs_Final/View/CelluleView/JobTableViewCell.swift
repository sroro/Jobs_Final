//
//  JobTableViewCell.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 08/04/2022.
//

import UIKit

class JobTableViewCell: UITableViewCell {

   
    @IBOutlet weak var nameJob: UILabel!
    
    @IBOutlet weak var nameSociety: UILabel!
    
    @IBOutlet weak var cityJob: UILabel!
    
    @IBOutlet weak var typeJob: UILabel!
    
    @IBOutlet weak var salaryJob: UILabel!
    
    
    @IBAction func favoriteJobButton(_ sender: UIButton) {
    }
}
