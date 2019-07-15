//
//  SignInViewController.swift
//  TinderApp
//
//  Created by reza abdolmaleki on 7/15/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signinTitle: UILabel!
    @IBOutlet weak var emailContainer: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordContainer: UIView!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }
    
    func setupUI(){
        setupSignUpButton()
        setupTitleLabel()
        setupSigninButton()
        setupEmailTextField()
        setupPasswordTextField()
        setupForgetPasswordButton()
    }
    
    @IBAction func dissmisViewController(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}
