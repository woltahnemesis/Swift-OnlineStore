//
//  ViewController.swift
//  Online-Store-v2
//
//  Created by Rey Walter Magbanua on 2020-07-22.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var validationText: UILabel!
    
    var usernameList: [String] = [user1.username, user2.username, user3.username]
    
    var passwordList: [String] = [user1.password, user2.password, user3.password]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func btnLogin(_ sender: Any) {
        
        var okUser = 0
        var okPass = 0
        
        for x in usernameList {
            
            if x != username.text!{
                okUser += 0
            } else if username.text == nil {
                okUser += 0
            } else {
                okUser += 1
            }
        }
        
        for y in passwordList {
            
            if y != password.text! {
                okPass += 0
            } else if password.text == nil {
                okPass += 0
            } else {
                okPass += 1
            }
        }
        
        if okUser == 1 && okPass == 1 {
            
            performSegue(withIdentifier: "loginToHome", sender: self.self)
            
            validationText.isHidden = true
            
        } else {
            
            validationText.text = "Invalid Login!"
            validationText.isHidden = false
        }
        
    }
    
}

