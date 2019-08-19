//
//  RegisterViewController.swift
//  posty
//
//  Created by thusitha on 8/19/19.
//  Copyright © 2019 noname. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    
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

    
    @IBAction func btnSignInClicked(_ sender:UIButton)
    {
//        index = 1
        Auth.auth().signIn(withEmail: txtEmail.text!, password: txtPassword.text!) { (user, error) in
            // ...
            if(error == nil )
            {
                if let user = user {
                    _ = user.user.displayName
                    let user_email = user.user.email
                    print(user_email!)
                }
                self.showAlert(message: "SignIn Successfully!")
            }
            else{
                if let errorCode = AuthErrorCode(rawValue: error!._code) {
                    switch errorCode {
                    case.wrongPassword:
                        self.showAlert(message: "You entered an invalid password please try again!")
                        break
                    case.userNotFound:
                        Auth.auth().createUser(withEmail: self.txtEmail.text!, password: self.txtPassword.text!,
                                               completion: { (user, error) in
                                                if error == nil {
                                                    if let user = user {
                                                        _=user.user.displayName
                                                        let user_email = user.user.email
                                                        print(user_email!)
                                                    }else {
                                                        if let errorCode = AuthErrorCode(rawValue: error!._code) {
                                                            switch errorCode {
                                                            case .invalidEmail:
                                                                self.showAlert(message: "You entered an invalid email!")
                                                            case .userNotFound:
                                                                self.showAlert(message: "User not found")
                                                            default:
                                                                print("Creating user error 2 \(error.debugDescription)!")
                                                                self.showAlert(message: "Unexpected error \(errorCode.rawValue) please try again!")
                                                            }
                                                        }
                                                    }
                                                    self.dismiss(animated: true, completion: nil)
                                                }
                        })
                    default:
                        self.showAlert(message: "Unexpected error \(errorCode.rawValue) please try again!")
                        print("Creating user error \(error.debugDescription)!")
                    }
                }
            }
        }
    }
}
