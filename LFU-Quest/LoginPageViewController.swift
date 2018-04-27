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
    @IBAction func loginButton(_ sender: Any) {
        clearFieldChecker()
        login()
    }
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func clearFieldChecker() {
        let userEmail: String = emailTextField.text!
        let userPassword: String = passwordTextField.text!
        if userEmail == "" && userPassword == "" {
            let alert = UIAlertController(title: "Все поля не заполнены!", message: "Пожалуйста, заполните поля Электронный адрес и Пароль", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if userEmail == "" && userPassword != "" {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if userEmail != "" && userPassword == "" {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Пароль", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
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
