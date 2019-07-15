//
//  ResetPasswordViewController.swift
//  TinderApp
//
//  Created by reza abdolmaleki on 7/15/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var titleResetPass: UILabel!
    @IBOutlet weak var emailContainer: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()

    }
    
    func setupUI() {
        setupEmailTextField()
        setupTitleLabel()
        setupResetButton()
    }
    
    @IBAction func dissmisViewController(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}
