//
//  LogOutViewController.swift
//  Rankipe
//
//  Created by Pawan on 12/10/20.
//  Copyright © 2020 group10. All rights reserved.
//

import UIKit
import Parse

class LogOutViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var FullnameLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let user = PFUser.current()
        usernameLabel.text = user!.username
        print(user)
        FullnameLabel.text = user!["Fullname"] as! String
        EmailLabel.text = user!.email
        
        
    }
    @IBAction func onLogOutPressed(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "userLoggedIn")
        dismiss(animated: true, completion: nil)
    }
    
}
