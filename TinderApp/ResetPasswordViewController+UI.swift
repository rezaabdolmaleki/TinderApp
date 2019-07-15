//
//  ResetPasswordViewController+UI.swift
//  TinderApp
//
//  Created by reza abdolmaleki on 7/15/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

extension ResetPasswordViewController {
    func setupTitleLabel() {
        let titleAttribute = NSMutableAttributedString(string: "Reset Password...", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 26), NSAttributedString.Key.foregroundColor : UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))])
        titleResetPass.attributedText = titleAttribute
    }
    
    func setupEmailTextField() {
        emailContainer.layer.cornerRadius = 10
        emailTextField.clipsToBounds = true
        emailContainer.layer.borderColor = UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.7).cgColor
        emailContainer.layer.borderWidth = 1
        emailTextField.borderStyle = .none
        let placeHolderAttribute = NSMutableAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.55)])
        emailTextField.attributedPlaceholder = placeHolderAttribute
    }
    
    func setupResetButton(){
        resetButton.setTitle("Sent Reset Link", for: UIControl.State.normal)
        resetButton.backgroundColor =  #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)
        resetButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        resetButton.layer.cornerRadius = 5
        resetButton.clipsToBounds = true
        resetButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
}
