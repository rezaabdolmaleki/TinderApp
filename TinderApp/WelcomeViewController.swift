//
//  WelcomeViewController.swift
//  TinderApp
//
//  Created by reza abdolmaleki on 7/14/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var termsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }
    
    func setupUI() {
        setupTitleLabel()
        setupFacebookButton()
        setupGoogleButton()
        setupOrLabel()
        setupSignUpButton()
        setupTermsLabel()
    }
}
