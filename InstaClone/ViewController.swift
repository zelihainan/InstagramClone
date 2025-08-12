//
//  ViewController.swift
//  InstaClone
//
//  Created by Zeliha İnan on 12.08.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signInClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    
    @IBAction func signUpClicked(_ sender: Any) {
    }
    
}

