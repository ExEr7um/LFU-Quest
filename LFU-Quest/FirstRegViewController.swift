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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
