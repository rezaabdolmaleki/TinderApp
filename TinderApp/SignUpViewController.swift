//
//  SignUpViewController.swift
//  TinderApp
//
//  Created by reza abdolmaleki on 7/15/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var avatarPickerImage: UIImageView!
    @IBOutlet weak var fullnameContainer: UIView!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailContainer: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordContainer: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        setupTitleLabel()
        setupAvatarPicker()
        setupfullNameText()
        setupEmail()
        setupPassword()
        setupSignUpButton()
        signInTapeButton()
    }
    
    
    @IBAction func dissmissViewController(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
