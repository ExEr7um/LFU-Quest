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

    @IBOutlet weak var passwordTextFieldView: UITextField!
    @IBOutlet weak var repeatPasswordTextFieldView: UITextField!
    @IBAction func registerButtonView(_ sender: Any) {
        var userPassword: String = passwordTextFieldView.text!
        var repeatPassword: String = repeatPasswordTextFieldView.text!
        if userPassword != repeatPassword {
            let alert = UIAlertController(title: "Пароли не совпадают!", message: "Проверьте правильность написания паролей", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
