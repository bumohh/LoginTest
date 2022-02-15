//
//  ViewController.swift
//  LoginTest
//
//  Created by Bruno Gomez on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    let vm = ViewModel()
    
    
    @IBOutlet var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func login(_ sender: UIButton) {
        if vm.validateUsername(username.text) && vm.validatePassword(password.text) {
            print("Login Success")
        } else {
            print("Login Failed")
        }
    }
    

}

