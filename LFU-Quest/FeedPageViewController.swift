//
//  FeedPageViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 23.04.2018.
//  Copyright © 2018 ExErtum's inc. All rights reserved.
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
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: Constants
    let firstLessonLabel = UILabel()
    
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        let scheduleTap = UITapGestureRecognizer(target: self, action: #selector(scheduleViewTapped))
        scheduleView.addGestureRecognizer(scheduleTap)
        scheduleView.isUserInteractionEnabled = true
        let scrollTap = UITapGestureRecognizer(target: self, action: #selector(scrollViewTapped))
        scrollView.addGestureRecognizer(scrollTap)
        scrollView.isUserInteractionEnabled = true
        weekDay()
    }
    @objc func scheduleViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 0.7) {
            self.scheduleView.layer.shadowOpacity = 0.25
            self.scheduleView.layer.shadowOffset = CGSize(width: 0, height: 0)
            self.scheduleView.layer.shadowRadius = 10
            self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 333)
        }
        animator.startAnimation()
    }
    @objc func scrollViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 0.7) {
            self.scheduleView.layer.shadowOpacity = 0
            self.scheduleView.layer.shadowOffset = CGSize(width: 0, height: 0)
            self.scheduleView.layer.shadowRadius = 0
            self.scheduleView.frame = CGRect(x: 0, y: 0, width: 375, height: 105)
        }
        animator.startAnimation()
    }
    func weekDay() {
        let date = Date()
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        var dayOfWeek = "День недели"
        if weekday == 1 {
            dayOfWeek = "Понедельник"
        }
        else if weekday == 2 {
            dayOfWeek = "Вторник"
        }
        else if weekday == 3 {
            dayOfWeek = "Среда"
        }
        else if weekday == 4 {
            dayOfWeek = "Четверг"
        }
        else if weekday == 5 {
            dayOfWeek = "Пятница"
        }
        else if weekday == 6 {
            dayOfWeek = "Суббота"
        }
        else if weekday == 7 {
            dayOfWeek = "Воскресенье"
        }
        scheduleDayLabel.text! = dayOfWeek
    }
}
