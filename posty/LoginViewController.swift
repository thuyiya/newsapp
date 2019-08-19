//
//  LoginViewController.swift
//  posty
//
//  Created by thusitha on 8/19/19.
//  Copyright © 2019 noname. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail:UITextField!
    @IBOutlet weak var txtPassword:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showAlert(message:String)
    {
        let alert = UIAlertController(title: message, message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func btnSignupClicked(_ sender: UIButton) {
        //for signup new user
        if ((txtEmail.text?.isEmpty)! || (txtPassword.text?.isEmpty)!) {
            self.showAlert(message: "All fields are mandatory!")
            return
        } else {
            Auth.auth().createUser(withEmail: txtEmail.text!, password: txtPassword.text!) {
                (authResult, error) in
                print("authResult ", authResult)
                if ((error == nil)) {
                    self.showAlert(message: "Signup Successfully!")
                } else {
                    self.showAlert(message: (error?.localizedDescription)!)
                }
            }
        }
    }

}
