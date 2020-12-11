//
//  SignInViewController.swift
//  Rankipe
//
//  Created by Pawan on 12/7/20.
//  Copyright © 2020 group10. All rights reserved.
//

import UIKit
import Parse
class SignInViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UITextField!
    @IBOutlet weak var PasswordLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true{
            self.performSegue(withIdentifier: "ON_SUCCESSFUL_SIGNIN_SEGUE", sender: self)
        }
    }
    
    
    @IBAction func OnSignInPressed(_ sender: Any) {
        var user = PFUser()
        let username = usernameLabel.text!
        let Password = PasswordLabel.text!
        
        PFUser.logInWithUsername(inBackground: username, password: Password) { (user, error) in
            if user != nil{
                UserDefaults.standard.set(true, forKey: "userLoggedIn")
                self.performSegue(withIdentifier: "ON_SUCCESSFUL_SIGNIN_SEGUE", sender: self)
            }else{
                print("There is an error \(error?.localizedDescription)")
            }
        }
    }
    
    
    @IBAction func onSignUpPressed(_ sender: Any) {
    }
    
}
