//
//  SecondRegViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 02.04.2018.
//  Copyright © 2018 Dream Sites. All rights reserved.
//

import UIKit
import Hero


class SecondRegViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBAction func registerButton(_ sender: Any) {
        var userPassword: String = passwordTextField.text!
        var repeatPassword: String = repeatPasswordTextField.text!
        if userPassword != repeatPassword {
            let alert = UIAlertController(title: "Пароли не совпадают!", message: "Проверьте правильность написания паролей", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            passwordTextField.text = ""
            repeatPasswordTextField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
