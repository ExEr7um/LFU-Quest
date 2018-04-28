//
//  FirstRegViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 02.04.2018.
//  Copyright © 2018 ExErtum's inc. All rights reserved.
//

import UIKit
import Hero
import Spring
import Firebase

class FirstRegViewController: UIViewController, UITextFieldDelegate {
    // MARK: Outlets
    @IBOutlet weak var nameTextFieldView: SpringTextField!
    @IBOutlet weak var emailTextFieldView: SpringTextField!
    @IBOutlet weak var passwordTextFieldView: SpringTextField!
    @IBOutlet weak var nameToEmailConstraint: NSLayoutConstraint!
    @IBOutlet weak var nameErrorLabel: UILabel!
    @IBOutlet weak var emailToPasswordConstraint: NSLayoutConstraint!
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var passwordToButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var passwordErrorLabel: UILabel!
    @IBAction func nextButtonView(_ sender: SpringButton) {
        clearFieldChecker()
        createAccount()
    }
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        nameErrorLabel.alpha = 0
        passwordErrorLabel.alpha = 0
        emailErrorLabel.alpha = 0
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func clearFieldChecker() {
        let userName: String = nameTextFieldView.text!
        let userEmail: String = emailTextFieldView.text!
        let userPassword: String = passwordTextFieldView.text!
        var nameFieldChecker = true
        var passwordFieldChecker = true
        var emailFieldChecker = true
        if userName == "" {
            nameFieldChecker = false
        }
        if userPassword == "" {
            passwordFieldChecker = false
        }
        if userEmail == "" {
            emailFieldChecker = false
        }
        if nameFieldChecker == false {
            self.nameTextFieldView.background = #imageLiteral(resourceName: "errorTextFieldBackground")
            self.nameToEmailConstraint.constant = 14
            self.nameErrorLabel.alpha = 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.nameTextFieldView.background = #imageLiteral(resourceName: "textFieldBackground")
                self.nameToEmailConstraint.constant = 10
                self.nameErrorLabel.alpha = 0
            }
        }
        if emailFieldChecker == false {
            self.emailTextFieldView.background = #imageLiteral(resourceName: "errorTextFieldBackground")
            self.emailToPasswordConstraint.constant = 14
            self.emailErrorLabel.alpha = 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.emailTextFieldView.background = #imageLiteral(resourceName: "textFieldBackground")
                self.emailToPasswordConstraint.constant = 10
                self.emailErrorLabel.alpha = 0
            }
        }
        if passwordFieldChecker == false {
            self.passwordTextFieldView.background = #imageLiteral(resourceName: "errorTextFieldBackground")
            self.passwordToButtonConstraint.constant = 14
            self.passwordErrorLabel.alpha = 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.passwordTextFieldView.background = #imageLiteral(resourceName: "textFieldBackground")
                self.passwordToButtonConstraint.constant = 10
                self.passwordErrorLabel.alpha = 0
            }
        }
    }
    func createAccount() {
        if nameTextFieldView.text! != "" && passwordTextFieldView.text! != "" && emailTextFieldView.text! != "" {
            Auth.auth().createUser(withEmail: emailTextFieldView.text!, password: passwordTextFieldView.text!) { user, error in
                if error == nil && user != nil {
                    print("User created!")
                    let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                    changeRequest?.displayName = self.nameTextFieldView.text!
                    changeRequest?.commitChanges { error in
                        if error == nil {
                            print("User display name changed!")
                        }
                    }
                } else {
                    print("Error creating user: \(error!.localizedDescription)")
                    self.nameTextFieldView.text! = ""
                    self.emailTextFieldView.text! = ""
                    self.passwordTextFieldView.text! = ""
                    let alert = UIAlertController(title: "Ошибка создания пользователя!", message: "Ошибка: \(error!.localizedDescription)", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
}
