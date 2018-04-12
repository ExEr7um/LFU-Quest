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

class FirstRegViewController: UIViewController {
    @IBOutlet weak var nameTextFieldView: SpringTextField!
    @IBOutlet weak var surnameTextFieldView: SpringTextField!
    @IBOutlet weak var emailTextFieldView: SpringTextField!
    @IBAction func nextButtonView(_ sender: SpringButton) {
        var userName: String = nameTextFieldView.text!
        var userSurname: String = surnameTextFieldView.text!
        var userEmail: String = emailTextFieldView.text!
        var nameFieldChecker = true
        var surnameFieldChecker = true
        var emailFieldChecker = true
        if userName == "" {
            nameFieldChecker = false
        }
        if userSurname == "" {
            surnameFieldChecker = false
        }
        if userEmail == "" {
            emailFieldChecker = false
        }
        if nameFieldChecker == false && surnameFieldChecker == false && emailFieldChecker == false {
            let alert = UIAlertController(title: "Все поля не заполнены!", message: "Пожалуйста, заполните поля Ваше имя, Ваша фамилия, Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == false && surnameFieldChecker == false && emailFieldChecker == true{
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поля Ваше имя и Ваша фамилия", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == false && surnameFieldChecker == true && emailFieldChecker == false {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поля Ваше имя и Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == true && surnameFieldChecker == false && emailFieldChecker == false {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поля Ваша фамилия и Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == false && surnameFieldChecker == true && emailFieldChecker == true {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Ваше имя", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == true && surnameFieldChecker == false && emailFieldChecker == true {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Ваша фамилия", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if nameFieldChecker == true && surnameFieldChecker == true && emailFieldChecker == false {
            let alert = UIAlertController(title: "Не все поля заполнены!", message: "Пожалуйста, заполните поле Ваш электронный адрес", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
