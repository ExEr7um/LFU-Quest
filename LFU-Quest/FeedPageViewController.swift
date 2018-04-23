//
//  FeedPageViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 23.04.2018.
//  Copyright © 2018 Dream Sites. All rights reserved.
//

import UIKit

class FeedPageViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var scheduleView: UIView!
    @IBOutlet weak var scheduleTitleLabel: UILabel!
    @IBOutlet weak var scheduleDayLabel: UILabel!
    @IBOutlet weak var scheduleCurrentLessonLabel: UILabel!
    @IBOutlet weak var scheduleCurrentTimeLabel: UILabel!
    @IBOutlet weak var scheduleCurrentRoomLabel: UILabel!
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(scheduleViewTapped))
        scheduleView.addGestureRecognizer(tap)
        scheduleView.isUserInteractionEnabled = true
    }
    @objc func scheduleViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            self.scheduleView.layer.shadowOpacity = 0.25
            self.scheduleView.layer.shadowOffset = CGSize(width: 0, height: 0)
            self.scheduleView.layer.shadowRadius = 10
            self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 333)
        }
        animator.startAnimation()
    }
}
