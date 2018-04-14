//
//  SettingsPageViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 14.04.2018.
//  Copyright © 2018 Dream Sites. All rights reserved.
//

import UIKit
import Hero
import Spring
import Firebase

class SettingsPageViewController: UIViewController {

    @IBAction func logoutButton(_ sender: Any) {
        try! Auth.auth().signOut()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
