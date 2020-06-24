//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Jacob Haff on 6/23/20.
//  Copyright © 2020 Jacob Haff. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
          // ...
            
            if let e = error {
                print(e.localizedDescription)
                
                let alert = UIAlertController(title: "Registration Error", message: e.localizedDescription, preferredStyle: .alert)

                alert.addAction(UIAlertAction(title: "Ok!", style: .default, handler: nil))

                self.present(alert, animated: true)

            } else {
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
            }
            
        }
    }
        
    }
    
}
