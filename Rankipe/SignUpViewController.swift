//
//  SignUpViewController.swift
//  Rankipe
//
//  Created by Pawan on 12/7/20.
//  Copyright © 2020 group10. All rights reserved.
//

import UIKit
import Parse


class SignUpViewController: UIViewController {

    @IBOutlet weak var Fullname: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var EmailLabel: UITextField!
    @IBOutlet weak var PasswordLabel: UITextField!
    @IBOutlet weak var error: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnSignUpPressed(_ sender: Any) {
        if Fullname != nil && username != nil && EmailLabel != nil && PasswordLabel != nil{
            let user = PFUser()
            user.email = EmailLabel.text!
            user.username = username.text!
            user.password = PasswordLabel.text!
            user["Fullname"] = Fullname.text!
            
            user.signUpInBackground { (succeeded: Bool, error : Error?) in
                if let error = error{
                    let errorString = error.localizedDescription
                    self.error.text = errorString

                }else{
                    print("Welcome to Rankipe")
                    self.performSegue(withIdentifier: "ON_SUCCESSFUL_SIGNUP_SEGUE", sender: self)
                }
            }
            
        }else{
            self.error.text = "Please, Fill all the Boxes."
            
        }
        
        
    }
    
    @IBAction func onSignInPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
