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
    @IBOutlet weak var classPickerLabel: UILabel!
    @IBAction func classPickerButton(_ sender: Any) {
        let db = Firestore.firestore()
        let userUid = Auth.auth().currentUser?.uid
        let alert = UIAlertController(title: "Выбор класса", message: "Выберите ваш класс", preferredStyle: .alert)
        let tenTech = UIAlertAction(title: "10Б, Технологический", style: .default, handler: { (action) -> Void in
            db.collection("users").document(userUid!).setData([
                "userClass": "Технологический",
                ]) { err in
                    if let err = err {
                        print("Error writing document: \(err)")
                    } else {
                        print("Document successfully written!")
                        self.classLabel()
                    }
            }
        })
        let tenEco = UIAlertAction(title: "10А, Экономический", style: .default, handler: { (action) -> Void in
            db.collection("users").document(userUid!).setData([
                "userClass": "Экономический",
                ]) { err in
                    if let err = err {
                        print("Error writing document: \(err)")
                    } else {
                        print("Document successfully written!")
                        self.classLabel()
                    }
            }
        })
        let tenGum = UIAlertAction(title: "10Б, Гуманитарный", style: .default, handler: { (action) -> Void in
            db.collection("users").document(userUid!).setData([
                "userClass": "Гуманитарный",
                ]) { err in
                    if let err = err {
                        print("Error writing document: \(err)")
                    } else {
                        print("Document successfully written!")
                        self.classLabel()
                    }
            }
        })
        let tenBio = UIAlertAction(title: "10Б, Биологический", style: .default, handler: { (action) -> Void in
            db.collection("users").document(userUid!).setData([
                "userClass": "Биологический",
                ]) { err in
                    if let err = err {
                        print("Error writing document: \(err)")
                    } else {
                        print("Document successfully written!")
                        self.classLabel()
                    }
            }
        })
        let cancel = UIAlertAction(title: "Отмена", style: .destructive, handler: { (action) -> Void in })
        alert.addAction(tenEco)
        alert.addAction(tenTech)
        alert.addAction(tenGum)
        alert.addAction(tenBio)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
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
                    let userName = Auth.auth().currentUser?.displayName
                    self.nameLabel.text! = userName!
                } else {
                    print(error!.localizedDescription)
                }
            }

        }))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func passwordChangeButton(_ sender: Any) {
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
        classLabel()
    }
    func classLabel() {
        let db = Firestore.firestore()
        db.collection("users").whereField("userClass", isEqualTo: "Технологический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error!)
            } else {
                self.classPickerLabel.text! = "Технологический"
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Экономический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error!)
            } else {
                self.classPickerLabel.text! = "Экономический"
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Биологический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error!)
            } else {
                self.classPickerLabel.text! = "Биологический"
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Гуманитарный").getDocuments { (snapshot, error) in
            if error != nil {
                print(error!)
            } else {
                self.classPickerLabel.text! = "Гуманитарный"
            }
        }
    }
}
