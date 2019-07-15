
import UIKit

extension SignUpViewController {
    func setupTitleLabel() {
        let titleAttribute = NSMutableAttributedString(string: "Create a new account...", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 26), NSAttributedString.Key.foregroundColor : UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))])
        titleLabel.attributedText = titleAttribute
    }
    
    func setupAvatarPicker() {
        avatarPickerImage.layer.cornerRadius = 40
        avatarPickerImage.clipsToBounds = true
        avatarPickerImage.layer.borderColor = UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.7).cgColor
        avatarPickerImage.layer.borderWidth = 1
        avatarPickerImage.contentMode = .scaleAspectFill
        avatarPickerImage.isUserInteractionEnabled = true
        let tapedGestureOnAvatarImage = UITapGestureRecognizer(target: self, action: #selector(tapActionForAvatarImage))
        avatarPickerImage.addGestureRecognizer(tapedGestureOnAvatarImage)
    }
    
    @objc func tapActionForAvatarImage(){
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker , animated: true)
    }
    
    func setupfullNameText() {
        fullnameContainer.layer.cornerRadius = 10
        fullNameTextField.clipsToBounds = true
        fullnameContainer.layer.borderColor = UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.7).cgColor
        fullnameContainer.layer.borderWidth = 1
        fullNameTextField.borderStyle = .none
        let placeHolderAttribute = NSMutableAttributedString(string: "Full Name", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.55)])
        fullNameTextField.attributedPlaceholder = placeHolderAttribute
    }
    
    func setupEmail() {
       emailContainer.layer.cornerRadius = 10
       emailTextField.clipsToBounds = true
       emailContainer.layer.borderColor = UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.7).cgColor
       emailContainer.layer.borderWidth = 1
       emailTextField.borderStyle = .none
        let placeHolderAttribute = NSMutableAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.55)])
        emailTextField.attributedPlaceholder = placeHolderAttribute
    }
    
    func setupPassword() {
        passwordContainer.layer.cornerRadius = 10
        passwordTextField.clipsToBounds = true
        passwordContainer.layer.borderColor = UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.7).cgColor
        passwordContainer.layer.borderWidth = 1
        passwordTextField.borderStyle = .none
        let placeHolderAttribute = NSMutableAttributedString(string: "Password (+8 Char)", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 45/255, green: 85/255, blue: 143/255, alpha: 0.55)])
        passwordTextField.attributedPlaceholder = placeHolderAttribute
    }
    
    func setupSignUpButton() {
        signUpButton.setTitle("Create a new account", for: UIControl.State.normal)
        signUpButton.backgroundColor =  #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)
        signUpButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        signUpButton.layer.cornerRadius = 5
        signUpButton.clipsToBounds = true
        signUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    func signInTapeButton() {
        let attribute = NSMutableAttributedString(string: "Already have an account ? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.init(white: 0, alpha: 0.8)])
        let attributeSignin = NSMutableAttributedString(string: "SignIn", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18) , NSAttributedString.Key.foregroundColor : UIColor.init(cgColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))])
        attribute.append(attributeSignin)
        signInButton.setAttributedTitle(attribute, for: UIControl.State.normal)
    }
    
}

extension SignUpViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectEditedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            avatarPickerImage.image = selectEditedImage
        }
        if let selectedOriginalImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            avatarPickerImage.image = selectedOriginalImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
}
