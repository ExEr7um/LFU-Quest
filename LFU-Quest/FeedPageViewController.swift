//
//  FeedPageViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 23.04.2018.
//  Copyright © 2018 ExErtum's inc. All rights reserved.
//

import UIKit

class FeedPageViewController: UIViewController {
    
    // MARK: Schedule Outlets
    @IBOutlet weak var scheduleView: UIView!
    @IBOutlet weak var scheduleTitleLabel: UILabel!
    @IBOutlet weak var scheduleDayLabel: UILabel!
    // MARK: Lesson 1
    @IBOutlet weak var oneLessonNameLabel: UILabel!
    @IBOutlet weak var oneLessonTimeLabel: UILabel!
    @IBOutlet weak var oneLessonRoomLabel: UILabel!
    // MARK: Lesson 2
    @IBOutlet weak var twoLessonNameLabel: UILabel!
    @IBOutlet weak var twoLessonTimeLabel: UILabel!
    @IBOutlet weak var twoLessonRoomLabel: UILabel!
    // MARK: Lesson 3
    @IBOutlet weak var threeLessonNameLabel: UILabel!
    @IBOutlet weak var threeLessonTimeLabel: UILabel!
    @IBOutlet weak var threeLessonRoomLabel: UILabel!
    // MARK: Lesson 4
    @IBOutlet weak var fourLessonNameLabel: UILabel!
    @IBOutlet weak var fourLessonTimeLabel: UILabel!
    @IBOutlet weak var fourLessonRoomLabel: UILabel!
    // MARK: Lesson 5
    @IBOutlet weak var fiveLessonNameLabel: UILabel!
    @IBOutlet weak var fiveLessonTimeLabel: UILabel!
    @IBOutlet weak var fiveLessonRoomLabel: UILabel!
    // MARK: Lesson 6
    @IBOutlet weak var sixLessonNameLabel: UILabel!
    @IBOutlet weak var sixLessonTimeLabel: UILabel!
    @IBOutlet weak var sixLessonRoomLabel: UILabel!
    // MARK: Lesson 7
    @IBOutlet weak var sevenLessonNameLabel: UILabel!
    @IBOutlet weak var sevenLessonTimeLabel: UILabel!
    @IBOutlet weak var sevenLessonRoomLabel: UILabel!
    // MARK: Current Lesson
    @IBOutlet weak var currentLessonNameLabel: UILabel!
    @IBOutlet weak var currentLessonTimeLabel: UILabel!
    @IBOutlet weak var currentLessonRoomLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fullScheduleLabel: UILabel!
    
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: NSDate
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let currentTime = hour * 60 + minute
        weekDay()
        
        // MARK: Hide all lessons
        self.oneLessonNameLabel.alpha = 0
        self.oneLessonTimeLabel.alpha = 0
        self.oneLessonRoomLabel.alpha = 0
        self.twoLessonNameLabel.alpha = 0
        self.twoLessonTimeLabel.alpha = 0
        self.twoLessonRoomLabel.alpha = 0
        self.threeLessonNameLabel.alpha = 0
        self.threeLessonTimeLabel.alpha = 0
        self.threeLessonRoomLabel.alpha = 0
        self.fourLessonNameLabel.alpha = 0
        self.fourLessonTimeLabel.alpha = 0
        self.fourLessonRoomLabel.alpha = 0
        self.fiveLessonNameLabel.alpha = 0
        self.fiveLessonTimeLabel.alpha = 0
        self.fiveLessonRoomLabel.alpha = 0
        self.sixLessonNameLabel.alpha = 0
        self.sixLessonTimeLabel.alpha = 0
        self.sixLessonRoomLabel.alpha = 0
        self.sevenLessonNameLabel.alpha = 0
        self.sevenLessonTimeLabel.alpha = 0
        self.sevenLessonRoomLabel.alpha = 0
        
        // MARK: Lessons time
        self.oneLessonTimeLabel.text! = "9:30 - 10:15"
        self.twoLessonTimeLabel.text! = "10:25 - 11:10"
        self.threeLessonTimeLabel.text! = "11:30 - 12:15"
        self.fourLessonTimeLabel.text! = "12:25 - 13:10"
        self.fiveLessonTimeLabel.text! = "13:20 - 14:05"
        self.sixLessonTimeLabel.text! = "14:35 - 15:20"
        self.sevenLessonTimeLabel.text! = "15:30 - 16:15"
        
        // MARK: Current Lesson
        if  currentTime >= 570 && currentTime <= 615 {
            self.currentLessonNameLabel.alpha = 1
            self.currentLessonTimeLabel.alpha = 1
            self.currentLessonRoomLabel.alpha = 1
            self.currentLessonNameLabel.text! = self.oneLessonNameLabel.text!
            self.currentLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
            self.currentLessonRoomLabel.text! = self.oneLessonRoomLabel.text!
            self.fullScheduleLabel.alpha = 0
        }
        else if currentTime >= 625 && currentTime <= 670 {
            self.currentLessonNameLabel.alpha = 1
            self.currentLessonTimeLabel.alpha = 1
            self.currentLessonRoomLabel.alpha = 1
            self.currentLessonNameLabel.text! = self.twoLessonNameLabel.text!
            self.currentLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
            self.currentLessonRoomLabel.text! = self.twoLessonRoomLabel.text!
            self.fullScheduleLabel.alpha = 0
        }
        else if currentTime >= 690 && currentTime <= 735 {
            self.currentLessonNameLabel.alpha = 1
            self.currentLessonTimeLabel.alpha = 1
            self.currentLessonRoomLabel.alpha = 1
            self.currentLessonNameLabel.text! = self.threeLessonNameLabel.text!
            self.currentLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.currentLessonRoomLabel.text! = self.threeLessonRoomLabel.text!
            self.fullScheduleLabel.alpha = 0
        }
        else if currentTime >= 745 && currentTime <= 790 {
            self.currentLessonNameLabel.alpha = 1
            self.currentLessonTimeLabel.alpha = 1
            self.currentLessonRoomLabel.alpha = 1
            self.currentLessonNameLabel.text! = self.fourLessonNameLabel.text!
            self.currentLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.currentLessonRoomLabel.text! = self.fourLessonRoomLabel.text!
            self.fullScheduleLabel.alpha = 0
        }
        else if currentTime >= 800 && currentTime <= 845 {
            self.currentLessonNameLabel.alpha = 1
            self.currentLessonTimeLabel.alpha = 1
            self.currentLessonRoomLabel.alpha = 1
            self.currentLessonNameLabel.text! = self.fiveLessonNameLabel.text!
            self.currentLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.currentLessonRoomLabel.text! = self.fiveLessonRoomLabel.text!
            self.fullScheduleLabel.alpha = 0
        }
        else if currentTime >= 875 && currentTime <= 920 {
            self.currentLessonNameLabel.alpha = 1
            self.currentLessonTimeLabel.alpha = 1
            self.currentLessonRoomLabel.alpha = 1
            self.currentLessonNameLabel.text! = self.sixLessonNameLabel.text!
            self.currentLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.currentLessonRoomLabel.text! = self.sixLessonRoomLabel.text!
            self.fullScheduleLabel.alpha = 0
        }
        else if currentTime >= 930 && currentTime <= 975 {
            self.currentLessonNameLabel.alpha = 1
            self.currentLessonTimeLabel.alpha = 1
            self.currentLessonRoomLabel.alpha = 1
            self.currentLessonNameLabel.text! = self.sevenLessonNameLabel.text!
            self.currentLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.currentLessonRoomLabel.text! = self.sevenLessonRoomLabel.text!
            self.fullScheduleLabel.alpha = 0
        }
        else {
            self.currentLessonNameLabel.alpha = 0
            self.currentLessonTimeLabel.alpha = 0
            self.currentLessonRoomLabel.alpha = 0
            self.fullScheduleLabel.alpha = 1
        }
        
        // MARK: Tap recorgiser
        let scheduleTap = UITapGestureRecognizer(target: self, action: #selector(scheduleViewTapped))
        scheduleView.addGestureRecognizer(scheduleTap)
        scheduleView.isUserInteractionEnabled = true
        let scrollTap = UITapGestureRecognizer(target: self, action: #selector(scrollViewTapped))
        scrollView.addGestureRecognizer(scrollTap)
        scrollView.isUserInteractionEnabled = true
        
        self.scheduleView.frame = CGRect(x: 0, y: 0, width: 375, height: 105)
    }
    @objc func scheduleViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 0.7) {
            
            // MARK: NSDate
            let date = Date()
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            let weekday = calendar.component(.weekday, from: date)
            let currentTime = hour * 60 + minute
            
            if weekday != 6 {
                
                // MARK: ScheduleView
                self.scheduleView.layer.shadowOpacity = 0.25
                self.scheduleView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.scheduleView.layer.shadowRadius = 10
                self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 394)
                
                // MARK: Lessons alpha
                self.oneLessonNameLabel.alpha = 1
                self.oneLessonTimeLabel.alpha = 1
                self.oneLessonRoomLabel.alpha = 1
                self.twoLessonNameLabel.alpha = 1
                self.twoLessonTimeLabel.alpha = 1
                self.twoLessonRoomLabel.alpha = 1
                self.threeLessonNameLabel.alpha = 1
                self.threeLessonTimeLabel.alpha = 1
                self.threeLessonRoomLabel.alpha = 1
                self.fourLessonNameLabel.alpha = 1
                self.fourLessonTimeLabel.alpha = 1
                self.fourLessonRoomLabel.alpha = 1
                self.fiveLessonNameLabel.alpha = 1
                self.fiveLessonTimeLabel.alpha = 1
                self.fiveLessonRoomLabel.alpha = 1
                self.sixLessonNameLabel.alpha = 1
                self.sixLessonTimeLabel.alpha = 1
                self.sixLessonRoomLabel.alpha = 1
                self.sevenLessonNameLabel.alpha = 1
                self.sevenLessonTimeLabel.alpha = 1
                self.sevenLessonRoomLabel.alpha = 1
                
                // MARK: Current Lesson Alpha
                self.currentLessonNameLabel.alpha = 0
                self.currentLessonTimeLabel.alpha = 0
                self.currentLessonRoomLabel.alpha = 0
                self.fullScheduleLabel.alpha = 0
                
                // MARK: Current Lesson
                if  currentTime >= 570 && currentTime <= 615 {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 625 && currentTime <= 670 {
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 690 && currentTime <= 735 {
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 745 && currentTime <= 790 {
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 800 && currentTime <= 845 {
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 875 && currentTime <= 920 {
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 930 && currentTime <= 975 {
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
            }
            else {
                
                // MARK: ScheduleView
                self.scheduleView.layer.shadowOpacity = 0.25
                self.scheduleView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.scheduleView.layer.shadowRadius = 10
                self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 298)
                
                // MARK: Lessons alpha
                self.oneLessonNameLabel.alpha = 1
                self.oneLessonTimeLabel.alpha = 1
                self.oneLessonRoomLabel.alpha = 1
                self.twoLessonNameLabel.alpha = 1
                self.twoLessonTimeLabel.alpha = 1
                self.twoLessonRoomLabel.alpha = 1
                self.threeLessonNameLabel.alpha = 1
                self.threeLessonTimeLabel.alpha = 1
                self.threeLessonRoomLabel.alpha = 1
                self.fourLessonNameLabel.alpha = 1
                self.fourLessonTimeLabel.alpha = 1
                self.fourLessonRoomLabel.alpha = 1
                self.fiveLessonNameLabel.alpha = 1
                self.fiveLessonTimeLabel.alpha = 1
                self.fiveLessonRoomLabel.alpha = 1
                self.sixLessonNameLabel.alpha = 0
                self.sixLessonTimeLabel.alpha = 0
                self.sixLessonRoomLabel.alpha = 0
                self.sevenLessonNameLabel.alpha = 0
                self.sevenLessonTimeLabel.alpha = 0
                self.sevenLessonRoomLabel.alpha = 0
                
                // MARK: Current Lesson Alpha
                self.currentLessonNameLabel.alpha = 0
                self.currentLessonTimeLabel.alpha = 0
                self.currentLessonRoomLabel.alpha = 0
                self.fullScheduleLabel.alpha = 0
                
                // MARK: Current Lesson
                if  currentTime >= 570 && currentTime <= 615 {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 625 && currentTime <= 670 {
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 690 && currentTime <= 735 {
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 745 && currentTime <= 790 {
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
                else if currentTime >= 800 && currentTime <= 845 {
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.625772655, green: 0.8370862007, blue: 0.834435761, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Bold", size: 17)
                }
            }
        }
        animator.startAnimation()
    }
    
    @objc func scrollViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 0.7) {
            
            // MARK: NSDate
            let date = Date()
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            let currentTime = hour * 60 + minute
            
            self.scheduleView.layer.shadowOpacity = 0
            self.scheduleView.layer.shadowOffset = CGSize(width: 0, height: 0)
            self.scheduleView.layer.shadowRadius = 0
            self.scheduleView.frame = CGRect(x: 0, y: 0, width: 375, height: 105)
            
            // MARK: Lessons alpha
            self.oneLessonNameLabel.alpha = 0
            self.oneLessonTimeLabel.alpha = 0
            self.oneLessonRoomLabel.alpha = 0
            self.twoLessonNameLabel.alpha = 0
            self.twoLessonTimeLabel.alpha = 0
            self.twoLessonRoomLabel.alpha = 0
            self.threeLessonNameLabel.alpha = 0
            self.threeLessonTimeLabel.alpha = 0
            self.threeLessonRoomLabel.alpha = 0
            self.fourLessonNameLabel.alpha = 0
            self.fourLessonTimeLabel.alpha = 0
            self.fourLessonRoomLabel.alpha = 0
            self.fiveLessonNameLabel.alpha = 0
            self.fiveLessonTimeLabel.alpha = 0
            self.fiveLessonRoomLabel.alpha = 0
            self.sixLessonNameLabel.alpha = 0
            self.sixLessonTimeLabel.alpha = 0
            self.sixLessonRoomLabel.alpha = 0
            self.sevenLessonNameLabel.alpha = 0
            self.sevenLessonTimeLabel.alpha = 0
            self.sevenLessonRoomLabel.alpha = 0
            
            // MARK: Current Lesson
            if  currentTime >= 570 && currentTime <= 615 {
                self.currentLessonNameLabel.alpha = 1
                self.currentLessonTimeLabel.alpha = 1
                self.currentLessonRoomLabel.alpha = 1
                self.currentLessonNameLabel.text! = self.oneLessonNameLabel.text!
                self.currentLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
                self.currentLessonRoomLabel.text! = self.oneLessonRoomLabel.text!
                self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
            }
            else if currentTime >= 625 && currentTime <= 670 {
                self.currentLessonNameLabel.alpha = 1
                self.currentLessonTimeLabel.alpha = 1
                self.currentLessonRoomLabel.alpha = 1
                self.currentLessonNameLabel.text! = self.twoLessonNameLabel.text!
                self.currentLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
                self.currentLessonRoomLabel.text! = self.twoLessonRoomLabel.text!
                self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
            }
            else if currentTime >= 690 && currentTime <= 735 {
                self.currentLessonNameLabel.alpha = 1
                self.currentLessonTimeLabel.alpha = 1
                self.currentLessonRoomLabel.alpha = 1
                self.currentLessonNameLabel.text! = self.threeLessonNameLabel.text!
                self.currentLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
                self.currentLessonRoomLabel.text! = self.threeLessonRoomLabel.text!
                self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
            }
            else if currentTime >= 745 && currentTime <= 790 {
                self.currentLessonNameLabel.alpha = 1
                self.currentLessonTimeLabel.alpha = 1
                self.currentLessonRoomLabel.alpha = 1
                self.currentLessonNameLabel.text! = self.fourLessonNameLabel.text!
                self.currentLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
                self.currentLessonRoomLabel.text! = self.fourLessonRoomLabel.text!
                self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
            }
            else if currentTime >= 800 && currentTime <= 845 {
                self.currentLessonNameLabel.alpha = 1
                self.currentLessonTimeLabel.alpha = 1
                self.currentLessonRoomLabel.alpha = 1
                self.currentLessonNameLabel.text! = self.fiveLessonNameLabel.text!
                self.currentLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
                self.currentLessonRoomLabel.text! = self.fiveLessonRoomLabel.text!
                self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
            }
            else if currentTime >= 875 && currentTime <= 920 {
                self.currentLessonNameLabel.alpha = 1
                self.currentLessonTimeLabel.alpha = 1
                self.currentLessonRoomLabel.alpha = 1
                self.currentLessonNameLabel.text! = self.sixLessonNameLabel.text!
                self.currentLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
                self.currentLessonRoomLabel.text! = self.sixLessonRoomLabel.text!
                self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
            }
            else if currentTime >= 930 && currentTime <= 975 {
                self.currentLessonNameLabel.alpha = 1
                self.currentLessonTimeLabel.alpha = 1
                self.currentLessonRoomLabel.alpha = 1
                self.currentLessonNameLabel.text! = self.sixLessonNameLabel.text!
                self.currentLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
                self.currentLessonRoomLabel.text! = self.sixLessonRoomLabel.text!
                self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
                self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2274509804, green: 0.2745098039, blue: 0.3960784314, alpha: 1)
            }
            else {
                self.currentLessonNameLabel.alpha = 0
                self.currentLessonTimeLabel.alpha = 0
                self.currentLessonRoomLabel.alpha = 0
                self.fullScheduleLabel.alpha = 1
            }
        }
        animator.startAnimation()
    }
    func weekDay() {
        
        // MARK: Constants
        let date = Date()
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        var dayOfWeek = "День недели"
        
        // MARK: Days of the week
        if weekday == 2 {
            dayOfWeek = "Понедельник"
            self.oneLessonNameLabel.text! = "Русский язык"
            self.oneLessonRoomLabel.text! = "42"
            self.twoLessonNameLabel.text! = "Русский язык"
            self.twoLessonRoomLabel.text! = "42"
            self.threeLessonNameLabel.text! = "Информатика"
            self.threeLessonRoomLabel.text! = "78"
            self.fourLessonNameLabel.text! = "Информатика"
            self.fourLessonRoomLabel.text! = "78"
            self.fiveLessonNameLabel.text! = "Физика"
            self.fiveLessonRoomLabel.text! = "43"
            self.sixLessonNameLabel.text! = "Физика"
            self.sixLessonRoomLabel.text! = "43"
            self.sevenLessonNameLabel.text! = "Электив"
            self.sevenLessonRoomLabel.text! = "78 / 41"
        }
        else if weekday == 3 {
            dayOfWeek = "Вторник"
            self.oneLessonNameLabel.text! = "Алгебра"
            self.oneLessonRoomLabel.text! = "44"
            self.twoLessonNameLabel.text! = "Алгебра"
            self.twoLessonRoomLabel.text! = "45"
            self.threeLessonNameLabel.text! = "Алгебра"
            self.threeLessonRoomLabel.text! = "45"
            self.fourLessonNameLabel.text! = "Литература"
            self.fourLessonRoomLabel.text! = "42"
            self.fiveLessonNameLabel.text! = "Обществознание"
            self.fiveLessonRoomLabel.text! = "43"
            self.sixLessonNameLabel.text! = "Обществознание"
            self.sixLessonRoomLabel.text! = "43"
            self.sevenLessonNameLabel.text! = "География"
            self.sevenLessonRoomLabel.text! = "41"
        }
        else if weekday == 4 {
            dayOfWeek = "Среда"
            self.oneLessonNameLabel.text! = "Физкультура"
            self.oneLessonTimeLabel.text! = "8:30 - 9:15"
            self.oneLessonRoomLabel.text! = "Спортзал"
            self.twoLessonNameLabel.text! = "Физкультура"
            self.twoLessonTimeLabel.text! = "9:25 - 10:10"
            self.twoLessonRoomLabel.text! = "Спортзал"
            self.threeLessonNameLabel.text! = "История"
            self.threeLessonRoomLabel.text! = "41"
            self.fourLessonNameLabel.text! = "История"
            self.fourLessonRoomLabel.text! = "41"
            self.fiveLessonNameLabel.text! = "Английский язык"
            self.fiveLessonRoomLabel.text! = "45"
            self.sixLessonNameLabel.text! = "Алгебра"
            self.sixLessonRoomLabel.text! = "45"
            self.sevenLessonNameLabel.text! = "Английский язык"
            self.sevenLessonRoomLabel.text! = "42"
        }
        else if weekday == 5 {
            dayOfWeek = "Четверг"
            self.oneLessonNameLabel.text! = "Информатика"
            self.oneLessonRoomLabel.text! = "78"
            self.twoLessonNameLabel.text! = "Информатика"
            self.twoLessonRoomLabel.text! = "78"
            self.threeLessonNameLabel.text! = "Физика"
            self.threeLessonRoomLabel.text! = "43"
            self.fourLessonNameLabel.text! = "Физика"
            self.fourLessonRoomLabel.text! = "43"
            self.fiveLessonNameLabel.text! = "Английский язык"
            self.fiveLessonRoomLabel.text! = "42"
            self.sixLessonNameLabel.text! = "Физика"
            self.sixLessonRoomLabel.text! = "43"
            self.sevenLessonNameLabel.text! = "Электив"
            self.sevenLessonRoomLabel.text! = "43"
        }
        else if weekday == 6 {
            dayOfWeek = "Пятница"
            self.oneLessonNameLabel.text! = "Литература"
            self.oneLessonRoomLabel.text! = "42"
            self.twoLessonNameLabel.text! = "Литература"
            self.twoLessonRoomLabel.text! = "42"
            self.threeLessonNameLabel.text! = "ОБЖ"
            self.threeLessonRoomLabel.text! = "43"
            self.fourLessonNameLabel.text! = "Геометрия"
            self.fourLessonRoomLabel.text! = "44"
            self.fiveLessonNameLabel.text! = "Геометрия"
            self.fiveLessonRoomLabel.text! = "44"
        }
        else if weekday == 7 {
            dayOfWeek = "Суббота"
        }
        else if weekday == 1 {
            dayOfWeek = "Воскресенье"
        }
        scheduleDayLabel.text! = dayOfWeek
    }
}
