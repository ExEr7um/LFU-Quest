//
//  LoginPageViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 12.04.2018.
//  Copyright © 2018 ExErtum's inc. All rights reserved.
//

import UIKit
import Hero
import Spring
import Firebase

class LoginPageViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var emailTextField: SpringTextField!
    @IBOutlet weak var passwordTextField: SpringTextField!
    @IBOutlet weak var emailToPasswordConstraint: NSLayoutConstraint!
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var passwordToButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var passwordErrorLabel: UILabel!
    @IBAction func loginButton(_ sender: Any) {
        clearFieldChecker()
        if self.emailTextField.text! != "" && self.passwordTextField.text! != "" {
            login()
        }
    }
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailErrorLabel.alpha = 0
        self.passwordErrorLabel.alpha = 0
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        emailTextField.background = #imageLiteral(resourceName: "textFieldBackground")
        emailToPasswordConstraint.constant = 10
        emailErrorLabel.alpha = 0
        passwordTextField.background = #imageLiteral(resourceName: "textFieldBackground")
        passwordToButtonConstraint.constant = 10
        passwordErrorLabel.alpha = 0
    }
    func clearFieldChecker() {
        let userEmail: String = emailTextField.text!
        let userPassword: String = passwordTextField.text!
        if userEmail == "" {
            self.emailTextField.background = #imageLiteral(resourceName: "errorTextFieldBackground")
            self.emailErrorLabel.alpha = 1
            self.emailToPasswordConstraint.constant = 14
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.emailTextField.background = #imageLiteral(resourceName: "textFieldBackground")
                self.emailToPasswordConstraint.constant = 10
                self.emailErrorLabel.alpha = 0
            }
        }
        if userPassword == "" {
            self.passwordTextField.background = #imageLiteral(resourceName: "errorTextFieldBackground")
            self.passwordErrorLabel.alpha = 1
            self.passwordToButtonConstraint.constant = 14
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.passwordTextField.background = #imageLiteral(resourceName: "textFieldBackground")
                self.passwordToButtonConstraint.constant = 10
                self.passwordErrorLabel.alpha = 0
            }
        }
    }
    func login() {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { user, error in
            if error == nil && user != nil {
                self.dismiss(animated: false, completion: nil)
            } else {
                print("Error loging in: \(error!.localizedDescription)")
                let alert = UIAlertController(title: "Не все поля заполнены!", message: "Ошибка: \(error!.localizedDescription)", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
