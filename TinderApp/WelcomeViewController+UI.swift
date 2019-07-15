//
//  WelcomeViewController+UI.swift
//  TinderApp
//
//  Created by reza abdolmaleki on 7/14/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

extension WelcomeViewController {
    func setupTitleLabel() {
        let titleAttribute = NSMutableAttributedString(string: "Welcome to JChat", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 38), NSAttributedString.Key.foregroundColor : UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))])
        let subtitleOne = NSMutableAttributedString(string: "\n  Please choose a option...", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))])
        let subtitleTow = NSMutableAttributedString(string: "\n\n in yek subtitle hast va inke badan taein mishe chikaresh bayad bokonim", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor : UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 0.45)])
        subtitleOne.append(subtitleTow)
        titleAttribute.append(subtitleOne)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        subtitleOne.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, subtitleOne.length))
        titleLabel.numberOfLines = 0
        titleLabel.attributedText = titleAttribute
    }
    
    func setupFacebookButton() {
        facebookButton.setTitle("Login with Facebook", for: UIControl.State.normal)
        facebookButton.backgroundColor = #colorLiteral(red: 0.2274509804, green: 0.3333333333, blue: 0.6235294118, alpha: 1)
        facebookButton.layer.cornerRadius = 5
        facebookButton.clipsToBounds = true
        facebookButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        facebookButton.setImage(UIImage(named: "icon-facebook"), for: UIControl.State.normal)
        facebookButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: -15, bottom: 12, right: 0)
        facebookButton.imageView?.contentMode = .scaleAspectFit
        facebookButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    func setupGoogleButton(){
        googleButton.setTitle("Login with Google", for: UIControl.State.normal)
        googleButton.backgroundColor = #colorLiteral(red: 0.9137254902, green: 0.2901960784, blue: 0.1960784314, alpha: 1)
        googleButton.layer.cornerRadius = 5
        googleButton.clipsToBounds = true
        googleButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        googleButton.setImage(UIImage(named: "icon-google"), for: UIControl.State.normal)
        googleButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: -35, bottom: 12, right: 0)
        googleButton.imageView?.contentMode = .scaleAspectFit
        googleButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    func setupOrLabel(){
        let orAttribute = NSMutableAttributedString(string: "Or", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)])
        orLabel.attributedText = orAttribute
    }
    
    func setupSignUpButton() {
        signupButton.setTitle("Create a new account", for: UIControl.State.normal)
        signupButton.backgroundColor =  #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        signupButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        signupButton.layer.cornerRadius = 5
        signupButton.clipsToBounds = true
        signupButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    func setupTermsLabel() {
        let textAttribute = NSMutableAttributedString(string: "By clicking on 'Create a new account' you agree to our", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.70)])
        let textAttributeTow = NSMutableAttributedString(string: " Terms of Service.", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15)])
        textAttribute.append(textAttributeTow)
        termsLabel.attributedText = textAttribute
        termsLabel.numberOfLines = 0
    }
    
}
