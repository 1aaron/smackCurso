//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Developer on 8/21/18.
//  Copyright © 2018 Aaron. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var profileIMG: UIImageView!
    @IBOutlet weak var emailTXT: UITextField!
    @IBOutlet weak var usernameTXT: UITextField!
    @IBOutlet weak var passwordTXT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseAatarPressed(_ sender: Any) {
        
    }
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTXT.text, emailTXT.text != "" else { return }
        guard let password = passwordTXT.text, passwordTXT.text != "" else { return }
        AuthService.instance.registerUser(email: email, passwod: password) { (success) in
            if success {
                print("registered user")
            }
        }
        
    }
    @IBOutlet weak var generateBackgroundPressed: UIButton!
    @IBAction func generateBckPressed(_ sender: Any) {
    }
}
