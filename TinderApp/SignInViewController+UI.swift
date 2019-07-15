//
//  SignInViewController+UI.swift
//  TinderApp
//
//  Created by reza abdolmaleki on 7/15/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

extension SignInViewController {
    func setupTitleLabel() {
        let titleAttribute = NSMutableAttributedString(string: "Login into account...", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 26), NSAttributedString.Key.foregroundColor : UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))])
        signinTitle.attributedText = titleAttribute
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
    
    func setupPasswordTextField() {
        passwordContainer.layer.cornerRadius = 10
        passwordTextField.clipsToBounds = true
        passwordContainer.layer.borderColor = UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.7).cgColor
        passwordContainer.layer.borderWidth = 1
        passwordTextField.borderStyle = .none
        let placeHolderAttribute = NSMutableAttributedString(string: "Password (+8 Char)", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.55)])
        passwordTextField.attributedPlaceholder = placeHolderAttribute
    }
    
    func setupSigninButton(){
        signinButton.setTitle("SignIn", for: UIControl.State.normal)
        signinButton.backgroundColor =  #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)
        signinButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        signinButton.layer.cornerRadius = 5
        signinButton.clipsToBounds = true
        signinButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    func setupSignUpButton() {
        let attribute = NSMutableAttributedString(string: "Don't have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.init(white: 0, alpha: 0.8)])
        let attributeSignin = NSMutableAttributedString(string: "SignUp", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18) , NSAttributedString.Key.foregroundColor : UIColor.init(cgColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))])
        attribute.append(attributeSignin)
        signUpButton.setAttributedTitle(attribute, for: UIControl.State.normal)
    }
    
    func setupForgetPasswordButton() {
        let attribute = NSMutableAttributedString(string: "Forget Password ? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.black])
        forgetPasswordButton.setAttributedTitle(attribute, for: UIControl.State.normal)
    }
}
