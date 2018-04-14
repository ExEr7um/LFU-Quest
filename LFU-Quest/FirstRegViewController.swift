//
//  FirstRegViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 02.04.2018.
//  Copyright © 2018 Dream Sites. All rights reserved.
//

import UIKit
import Hero
import Spring
import Firebase

class FirstRegViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var nameTextFieldView: SpringTextField!
    @IBOutlet weak var emailTextFieldView: SpringTextField!
    @IBOutlet weak var passwordTextFieldView: SpringTextField!
    @IBAction func nextButtonView(_ sender: SpringButton) {
        clearFieldChecker()
        createAccount()
    }
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
        if nameFieldChecker == false && passwordFieldChecker == false && emailFieldChecker == false {
            let alert = UIAlertController(title: "Все поля не заполнены!", message: "Пожалуйста, заполните поля Ваше имя, Ваш пароль, Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == false && passwordFieldChecker == false && emailFieldChecker == true{
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поля Ваше имя и Ваш пароль", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == false && passwordFieldChecker == true && emailFieldChecker == false {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поля Ваше имя и Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == true && passwordFieldChecker == false && emailFieldChecker == false {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поля Ваш пароль и Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == false && passwordFieldChecker == true && emailFieldChecker == true {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Ваше имя", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == true && passwordFieldChecker == false && emailFieldChecker == true {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Ваш пароль", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == true && passwordFieldChecker == true && emailFieldChecker == false {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    func createAccount() {
        if nameTextFieldView.text! != "" && passwordTextFieldView.text! != "" && emailTextFieldView.text! != "" {
            Auth.auth().createUser(withEmail: emailTextFieldView.text!, password: passwordTextFieldView.text!) { user, error in
                if error == nil && user != nil {
                    print("User created!")
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
