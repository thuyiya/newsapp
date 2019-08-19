//
//  ViewController.swift
//  posty
//
//  Created by thusitha on 8/16/19.
//  Copyright © 2019 noname. All rights reserved.
//

import UIKit
import FirebaseDatabase
//import FirebaseAuth
//import FirebaseStorage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Database.database().reference()
        
        ref.child("someId/title").setValue("Gon Ranja")

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let ref = Database.database().reference()
//        ref.child("someid/name").setValue("Thusitha")
//        ref.childByAutoId().setValue(["name": "Tom", "age": 10, "role": "user"])
//        ref.child("someid/name").observeSingleEvent(of: .value) {
//            (snapshot) in
//            print("working", snapshot)
//        }
//    }
    
//    func createUser(email: String, password: String, _ callback: ((Error?) -> ())? = nil){
//        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//            if let e = error{
//                callback?(e)
//                return
//            }
//            callback?(nil)
//        }
//    }
//
//    func login(withEmail email: String, password: String, _ callback: ((Error?) -> ())? = nil){
//        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
//            if let e = error{
//                callback?(e)
//                return
//            }
//            callback?(nil)
//        }
//    }
//
//    func signOut() -> Bool{
//        do{
//            try Auth.auth().signOut()
//            return true
//        }catch{
//            return false
//        }
//    }
//
//    func sendEmailVerification(_ callback: ((Error?) -> ())? = nil){
//        Auth.auth().currentUser?.sendEmailVerification(completion: { (error) in
//            callback?(error)
//        })
//    }
//
//    func reloadUser(_ callback: ((Error?) -> ())? = nil){
//        Auth.auth().currentUser?.reload(completion: { (error) in
//            callback?(error)
//        })
//    }
//
//    func sendPasswordReset(withEmail email: String, _ callback: ((Error?) -> ())? = nil){
//        Auth.auth().sendPasswordReset(withEmail: email) { error in
//            callback?(error)
//        }
//    }
}

