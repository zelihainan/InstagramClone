//
//  SettingsViewController.swift
//  InstaClone
//
//  Created by Zeliha İnan on 12.08.2025.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func logoutClicked(_ sender: Any) {
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    
}
