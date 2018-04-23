//
//  SettingsPageViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 14.04.2018.
//  Copyright © 2018 ExErtum's inc. All rights reserved.
//

import UIKit
import Hero
import Spring
import Firebase

class SettingsPageViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBAction func nameChangeButton(_ sender: Any) {
        let alert = UIAlertController(title: "Изменение имени", message: "Введите новое имя!", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.text = ""
        }
        alert.addAction(UIAlertAction(title: "Изменить", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0]
            let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
            changeRequest?.displayName = textField?.text!
            changeRequest?.commitChanges { error in
                if error == nil {
                    print("User display name changed!")
                } else {
                    print(error!.localizedDescription)
                }
            }

        }))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func passwordChangeButton(_ sender: Any) {
//        let alert = UIAlertController(title: "Изменение пароля", message: "Введите новый пароль!", preferredStyle: .alert)
//        alert.addTextField { (textField) in
//            textField.text = ""
//        }
//        alert.addAction(UIAlertAction(title: "Изменить", style: .default, handler: { [weak alert] (_) in
//            let textField = alert?.textFields![0]
//            Auth.auth().currentUser?.updatePassword(to: (textField?.text!)!) { (error) in
//                if error == nil {
//                    print("Password updated!")
//                } else {
//                    print(error?.localizedDescription)
//                }
//            }
//
//        }))
//        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func logoutButton(_ sender: Any) {
        try! Auth.auth().signOut()
    }
    @IBAction func deleteButton(_ sender: Any) {
        Auth.auth().currentUser?.delete { error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("Account deleted!")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let userName = Auth.auth().currentUser?.displayName
        let userEmail = Auth.auth().currentUser?.email
        nameLabel.text! = userName!
        emailLabel.text! = userEmail!
    }
}
