//
//  FeedPageViewController.swift
//  LFU-Quest
//
//  Created by Василий Кузин on 23.04.2018.
//  Copyright © 2018 ExErtum's inc. All rights reserved.
//

import UIKit
import Hero
import Spring
import Firebase

class FeedPageViewController: UIViewController {
    
    var userClass: String = "Загрузка..."
    
    @IBOutlet weak var leftScheduleDayLabel: UILabel!
    
    @IBOutlet weak var leftOneLessonNameLabel: UILabel!
    @IBOutlet weak var leftOneLessonTimeLabel: UILabel!
    @IBOutlet weak var leftOneLessonRoomLabel: UILabel!
    
    @IBOutlet weak var leftTwoLessonNameLabel: UILabel!
    @IBOutlet weak var leftTwoLessonTimeLabel: UILabel!
    @IBOutlet weak var leftTwoLessonRoomLabel: UILabel!
    
    @IBOutlet weak var leftThreeLessonNameLabel: UILabel!
    @IBOutlet weak var leftThreeLessonTimeLabel: UILabel!
    @IBOutlet weak var leftThreeLessonRoomLabel: UILabel!
    
    @IBOutlet weak var leftFourLessonNameLabel: UILabel!
    @IBOutlet weak var leftFourLessonTimeLabel: UILabel!
    @IBOutlet weak var leftFourLessonRoomLabel: UILabel!
    
    @IBOutlet weak var leftFiveLessonNameLabel: UILabel!
    @IBOutlet weak var leftFiveLessonTimeLabel: UILabel!
    @IBOutlet weak var leftFiveLessonRoomLabel: UILabel!
    
    @IBOutlet weak var leftSixLessonNameLabel: UILabel!
    @IBOutlet weak var leftSixLessonTimeLabel: UILabel!
    @IBOutlet weak var leftSixLessonRoomLabel: UILabel!
    
    @IBOutlet weak var leftSevenLessonNameLabel: UILabel!
    @IBOutlet weak var leftSevenLessonTimeLabel: UILabel!
    @IBOutlet weak var leftSevenLessonRoomLabel: UILabel!
    
    @IBOutlet weak var rightScheduleDayLabel: UILabel!
    
    @IBOutlet weak var rightOneLessonNameLabel: UILabel!
    @IBOutlet weak var rightOneLessonTimeLabel: UILabel!
    @IBOutlet weak var rightOneLessonRoomLabel: UILabel!
    
    @IBOutlet weak var rightTwoLessonNameLabel: UILabel!
    @IBOutlet weak var rightTwoLessonTimeLabel: UILabel!
    @IBOutlet weak var rightTwoLessonRoomLabel: UILabel!
    
    @IBOutlet weak var rightThreeLessonNameLabel: UILabel!
    @IBOutlet weak var rightThreeLessonTimeLabel: UILabel!
    @IBOutlet weak var rightThreeLessonRoomLabel: UILabel!
    
    @IBOutlet weak var rightFourLessonNameLabel: UILabel!
    @IBOutlet weak var rightFourLessonTimeLabel: UILabel!
    @IBOutlet weak var rightFourLessonRoomLabel: UILabel!
    
    @IBOutlet weak var rightFiveLessonNameLabel: UILabel!
    @IBOutlet weak var rightFiveLessonTimeLabel: UILabel!
    @IBOutlet weak var rightFiveLessonRoomLabel: UILabel!
    
    @IBOutlet weak var rightSixLessonNameLabel: UILabel!
    @IBOutlet weak var rightSixLessonTimeLabel: UILabel!
    @IBOutlet weak var rightSixLessonRoomLabel: UILabel!
    
    @IBOutlet weak var rightSevenLessonNameLabel: UILabel!
    @IBOutlet weak var rightSevenLessonTimeLabel: UILabel!
    @IBOutlet weak var rightSevenLessonRoomLabel: UILabel!
    
    @IBAction func scheduleRightSwipe(_ sender: Any) {
        if self.scheduleDayLabel.text! == "Понедельник" {
            self.leftScheduleDayLabel.text! = "Пятница"
            
            self.leftOneLessonNameLabel.text! = "Литература"
            self.leftOneLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
            self.leftOneLessonRoomLabel.text! = "42"
            
            self.leftTwoLessonNameLabel.text! = "Литература"
            self.leftTwoLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
            self.leftTwoLessonRoomLabel.text! = "42"
            
            self.leftThreeLessonNameLabel.text! = "ОБЖ"
            self.leftThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.leftThreeLessonRoomLabel.text! = "43"
            
            self.leftFourLessonNameLabel.text! = "Геометрия"
            self.leftFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.leftFourLessonRoomLabel.text! = "44"
            
            self.leftFiveLessonNameLabel.text! = "Геометрия"
            self.leftFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.leftFiveLessonRoomLabel.text! = "44"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                // Friday
                self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 298)
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.sizeToFit()
                self.leftOneLessonTimeLabel.sizeToFit()
                self.leftOneLessonRoomLabel.sizeToFit()
                
                self.leftTwoLessonNameLabel.sizeToFit()
                self.leftTwoLessonTimeLabel.sizeToFit()
                self.leftTwoLessonRoomLabel.sizeToFit()
                
                self.leftThreeLessonNameLabel.sizeToFit()
                self.leftThreeLessonTimeLabel.sizeToFit()
                self.leftThreeLessonRoomLabel.sizeToFit()
                
                self.leftFourLessonNameLabel.sizeToFit()
                self.leftFourLessonTimeLabel.sizeToFit()
                self.leftFourLessonRoomLabel.sizeToFit()
                
                self.leftFiveLessonNameLabel.sizeToFit()
                self.leftFiveLessonTimeLabel.sizeToFit()
                self.leftFiveLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 6 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            // Friday
            self.sixLessonNameLabel.alpha = 0
            self.sixLessonTimeLabel.alpha = 0
            self.sixLessonRoomLabel.alpha = 0
            self.sevenLessonNameLabel.alpha = 0
            self.sevenLessonTimeLabel.alpha = 0
            self.sevenLessonRoomLabel.alpha = 0
            
            self.scheduleDayLabel.text! = self.leftScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.leftOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.leftOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.leftOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.leftTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.leftTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.leftTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.leftThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.leftThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.leftThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.leftFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.leftFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.leftFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.leftFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.leftFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.leftFiveLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Вторник" {
            self.leftScheduleDayLabel.text! = "Понедельник"
            
            self.leftOneLessonNameLabel.text! = "Русский язык"
            self.leftOneLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
            self.leftOneLessonRoomLabel.text! = "42"
            
            self.leftTwoLessonNameLabel.text! = "Русский язык"
            self.leftTwoLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
            self.leftTwoLessonRoomLabel.text! = "42"
            
            self.leftThreeLessonNameLabel.text! = "Информатика"
            self.leftThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.leftThreeLessonRoomLabel.text! = "78"
            
            self.leftFourLessonNameLabel.text! = "Информатика"
            self.leftFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.leftFourLessonRoomLabel.text! = "78"
            
            self.leftFiveLessonNameLabel.text! = "Физика"
            self.leftFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.leftFiveLessonRoomLabel.text! = "43"
            
            self.leftSixLessonNameLabel.text! = "Физика"
            self.leftSixLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.leftSixLessonRoomLabel.text! = "43"
            
            self.leftSevenLessonNameLabel.text! = "Электив"
            self.leftSevenLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.leftSevenLessonRoomLabel.text! = "41 / 78"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.sizeToFit()
                self.leftOneLessonTimeLabel.sizeToFit()
                self.leftOneLessonRoomLabel.sizeToFit()
                
                self.leftTwoLessonNameLabel.sizeToFit()
                self.leftTwoLessonTimeLabel.sizeToFit()
                self.leftTwoLessonRoomLabel.sizeToFit()
                
                self.leftThreeLessonNameLabel.sizeToFit()
                self.leftThreeLessonTimeLabel.sizeToFit()
                self.leftThreeLessonRoomLabel.sizeToFit()
                
                self.leftFourLessonNameLabel.sizeToFit()
                self.leftFourLessonTimeLabel.sizeToFit()
                self.leftFourLessonRoomLabel.sizeToFit()
                
                self.leftFiveLessonNameLabel.sizeToFit()
                self.leftFiveLessonTimeLabel.sizeToFit()
                self.leftFiveLessonRoomLabel.sizeToFit()
                
                self.leftSixLessonNameLabel.sizeToFit()
                self.leftSixLessonTimeLabel.sizeToFit()
                self.leftSixLessonRoomLabel.sizeToFit()
                
                self.leftSevenLessonNameLabel.sizeToFit()
                self.leftSevenLessonTimeLabel.sizeToFit()
                self.leftSevenLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 2 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.leftScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.leftOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.leftOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.leftOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.leftTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.leftTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.leftTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.leftThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.leftThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.leftThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.leftFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.leftFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.leftFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.leftFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.leftFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.leftFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.leftSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.leftSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.leftSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.leftSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.leftSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.leftSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Среда" {
            self.leftScheduleDayLabel.text! = "Вторник"
            
            self.leftOneLessonNameLabel.text! = "Алгебра"
            self.leftOneLessonTimeLabel.text! = "9:30 - 10:15"
            self.leftOneLessonRoomLabel.text! = "44"
            
            self.leftTwoLessonNameLabel.text! = "Алгебра"
            self.leftTwoLessonTimeLabel.text! = "10:25 - 11:10"
            self.leftTwoLessonRoomLabel.text! = "45"
            
            self.leftThreeLessonNameLabel.text! = "Алгебра"
            self.leftThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.leftThreeLessonRoomLabel.text! = "45"
            
            self.leftFourLessonNameLabel.text! = "Литература"
            self.leftFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.leftFourLessonRoomLabel.text! = "42"
            
            self.leftFiveLessonNameLabel.text! = "Обществознание"
            self.leftFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.leftFiveLessonRoomLabel.text! = "43"
            
            self.leftSixLessonNameLabel.text! = "Обществознание"
            self.leftSixLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.leftSixLessonRoomLabel.text! = "43"
            
            self.leftSevenLessonNameLabel.text! = "География"
            self.leftSevenLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.leftSevenLessonRoomLabel.text! = "41"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.sizeToFit()
                self.leftOneLessonTimeLabel.sizeToFit()
                self.leftOneLessonRoomLabel.sizeToFit()
                
                self.leftTwoLessonNameLabel.sizeToFit()
                self.leftTwoLessonTimeLabel.sizeToFit()
                self.leftTwoLessonRoomLabel.sizeToFit()
                
                self.leftThreeLessonNameLabel.sizeToFit()
                self.leftThreeLessonTimeLabel.sizeToFit()
                self.leftThreeLessonRoomLabel.sizeToFit()
                
                self.leftFourLessonNameLabel.sizeToFit()
                self.leftFourLessonTimeLabel.sizeToFit()
                self.leftFourLessonRoomLabel.sizeToFit()
                
                self.leftFiveLessonNameLabel.sizeToFit()
                self.leftFiveLessonTimeLabel.sizeToFit()
                self.leftFiveLessonRoomLabel.sizeToFit()
                
                self.leftSixLessonNameLabel.sizeToFit()
                self.leftSixLessonTimeLabel.sizeToFit()
                self.leftSixLessonRoomLabel.sizeToFit()
                
                self.leftSevenLessonNameLabel.sizeToFit()
                self.leftSevenLessonTimeLabel.sizeToFit()
                self.leftSevenLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 3 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.leftScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.leftOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.leftOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.leftOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.leftTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.leftTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.leftTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.leftThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.leftThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.leftThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.leftFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.leftFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.leftFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.leftFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.leftFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.leftFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.leftSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.leftSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.leftSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.leftSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.leftSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.leftSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Четверг" {
            self.leftScheduleDayLabel.text! = "Среда"
            
            self.leftOneLessonNameLabel.text! = "Физкультура"
            self.leftOneLessonTimeLabel.text! = "8:30 - 9:15"
            self.leftOneLessonRoomLabel.text! = "Спортзал"
            
            self.leftTwoLessonNameLabel.text! = "Физкультура"
            self.leftTwoLessonTimeLabel.text! = "9:25 - 10:10"
            self.leftTwoLessonRoomLabel.text! = "42"
            
            self.leftThreeLessonNameLabel.text! = "История"
            self.leftThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.leftThreeLessonRoomLabel.text! = "41"
            
            self.leftFourLessonNameLabel.text! = "История"
            self.leftFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.leftFourLessonRoomLabel.text! = "41"
            
            self.leftFiveLessonNameLabel.text! = "Английский язык"
            self.leftFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.leftFiveLessonRoomLabel.text! = "45"
            
            self.leftSixLessonNameLabel.text! = "Алгебра"
            self.leftSixLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.leftSixLessonRoomLabel.text! = "45"
            
            self.leftSevenLessonNameLabel.text! = "Английский язык"
            self.leftSevenLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.leftSevenLessonRoomLabel.text! = "42"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.sizeToFit()
                self.leftOneLessonTimeLabel.sizeToFit()
                self.leftOneLessonRoomLabel.sizeToFit()
                
                self.leftTwoLessonNameLabel.sizeToFit()
                self.leftTwoLessonTimeLabel.sizeToFit()
                self.leftTwoLessonRoomLabel.sizeToFit()
                
                self.leftThreeLessonNameLabel.sizeToFit()
                self.leftThreeLessonTimeLabel.sizeToFit()
                self.leftThreeLessonRoomLabel.sizeToFit()
                
                self.leftFourLessonNameLabel.sizeToFit()
                self.leftFourLessonTimeLabel.sizeToFit()
                self.leftFourLessonRoomLabel.sizeToFit()
                
                self.leftFiveLessonNameLabel.sizeToFit()
                self.leftFiveLessonTimeLabel.sizeToFit()
                self.leftFiveLessonRoomLabel.sizeToFit()
                
                self.leftSixLessonNameLabel.sizeToFit()
                self.leftSixLessonTimeLabel.sizeToFit()
                self.leftSixLessonRoomLabel.sizeToFit()
                
                self.leftSevenLessonNameLabel.sizeToFit()
                self.leftSevenLessonTimeLabel.sizeToFit()
                self.leftSevenLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 4 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.leftScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.leftOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.leftOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.leftOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.leftTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.leftTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.leftTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.leftThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.leftThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.leftThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.leftFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.leftFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.leftFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.leftFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.leftFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.leftFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.leftSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.leftSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.leftSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.leftSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.leftSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.leftSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Пятница" {
            self.leftScheduleDayLabel.text! = "Четверг"
            
            self.leftOneLessonNameLabel.text! = "Информатика"
            self.leftOneLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
            self.leftOneLessonRoomLabel.text! = "78"
            
            self.leftTwoLessonNameLabel.text! = "Информатика"
            self.leftTwoLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
            self.leftTwoLessonRoomLabel.text! = "78"
            
            self.leftThreeLessonNameLabel.text! = "Физика"
            self.leftThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.leftThreeLessonRoomLabel.text! = "43"
            
            self.leftFourLessonNameLabel.text! = "Физика"
            self.leftFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.leftFourLessonRoomLabel.text! = "43"
            
            self.leftFiveLessonNameLabel.text! = "Английский язык"
            self.leftFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.leftFiveLessonRoomLabel.text! = "42"
            
            self.leftSixLessonNameLabel.text! = "Физика"
            self.leftSixLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.leftSixLessonRoomLabel.text! = "43"
            
            self.leftSevenLessonNameLabel.text! = "Физика"
            self.leftSevenLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.leftSevenLessonRoomLabel.text! = "43"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                // Friday
                self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 394)
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
                
                self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.leftOneLessonNameLabel.sizeToFit()
                self.leftOneLessonTimeLabel.sizeToFit()
                self.leftOneLessonRoomLabel.sizeToFit()
                
                self.leftTwoLessonNameLabel.sizeToFit()
                self.leftTwoLessonTimeLabel.sizeToFit()
                self.leftTwoLessonRoomLabel.sizeToFit()
                
                self.leftThreeLessonNameLabel.sizeToFit()
                self.leftThreeLessonTimeLabel.sizeToFit()
                self.leftThreeLessonRoomLabel.sizeToFit()
                
                self.leftFourLessonNameLabel.sizeToFit()
                self.leftFourLessonTimeLabel.sizeToFit()
                self.leftFourLessonRoomLabel.sizeToFit()
                
                self.leftFiveLessonNameLabel.sizeToFit()
                self.leftFiveLessonTimeLabel.sizeToFit()
                self.leftFiveLessonRoomLabel.sizeToFit()
                
                self.leftSixLessonNameLabel.sizeToFit()
                self.leftSixLessonTimeLabel.sizeToFit()
                self.leftSixLessonRoomLabel.sizeToFit()
                
                self.leftSevenLessonNameLabel.sizeToFit()
                self.leftSevenLessonTimeLabel.sizeToFit()
                self.leftSevenLessonRoomLabel.sizeToFit()
                
                self.sixLessonNameLabel.alpha = 1
                self.sixLessonTimeLabel.alpha = 1
                self.sixLessonRoomLabel.alpha = 1
                
                self.sevenLessonNameLabel.alpha = 1
                self.sevenLessonTimeLabel.alpha = 1
                self.sevenLessonRoomLabel.alpha = 1
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 5 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.leftScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.leftOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.leftOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.leftOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.leftTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.leftTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.leftTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.leftThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.leftThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.leftThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.leftFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.leftFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.leftFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.leftFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.leftFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.leftFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.leftSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.leftSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.leftSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.leftSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.leftSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.leftSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
    }
    @IBAction func scheduleLeftSwipe(_ sender: Any) {
        if self.scheduleDayLabel.text! == "Понедельник" {
            self.rightScheduleDayLabel.text! = "Вторник"
            
            self.rightOneLessonNameLabel.text! = "Алгебра"
            self.rightOneLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
            self.rightOneLessonRoomLabel.text! = "44"
            
            self.rightTwoLessonNameLabel.text! = "Алгебра"
            self.rightTwoLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
            self.rightTwoLessonRoomLabel.text! = "45"
            
            self.rightThreeLessonNameLabel.text! = "Алгебра"
            self.rightThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.rightThreeLessonRoomLabel.text! = "45"
            
            self.rightFourLessonNameLabel.text! = "Литература"
            self.rightFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.rightFourLessonRoomLabel.text! = "42"
            
            self.rightFiveLessonNameLabel.text! = "Обществознание"
            self.rightFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.rightFiveLessonRoomLabel.text! = "43"
            
            self.rightSixLessonNameLabel.text! = "Обществознание"
            self.rightSixLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.rightSixLessonRoomLabel.text! = "43"
            
            self.rightSevenLessonNameLabel.text! = "География"
            self.rightSevenLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.rightSevenLessonRoomLabel.text! = "41"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.sizeToFit()
                self.rightOneLessonTimeLabel.sizeToFit()
                self.rightOneLessonRoomLabel.sizeToFit()
                
                self.rightTwoLessonNameLabel.sizeToFit()
                self.rightTwoLessonTimeLabel.sizeToFit()
                self.rightTwoLessonRoomLabel.sizeToFit()
                
                self.rightThreeLessonNameLabel.sizeToFit()
                self.rightThreeLessonTimeLabel.sizeToFit()
                self.rightThreeLessonRoomLabel.sizeToFit()
                
                self.rightFourLessonNameLabel.sizeToFit()
                self.rightFourLessonTimeLabel.sizeToFit()
                self.rightFourLessonRoomLabel.sizeToFit()
                
                self.rightFiveLessonNameLabel.sizeToFit()
                self.rightFiveLessonTimeLabel.sizeToFit()
                self.rightFiveLessonRoomLabel.sizeToFit()
                
                self.rightSixLessonNameLabel.sizeToFit()
                self.rightSixLessonTimeLabel.sizeToFit()
                self.rightSixLessonRoomLabel.sizeToFit()
                
                self.rightSevenLessonNameLabel.sizeToFit()
                self.rightSevenLessonTimeLabel.sizeToFit()
                self.rightSevenLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 3 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.rightScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.rightOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.rightOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.rightOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.rightTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.rightTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.rightTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.rightThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.rightThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.rightThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.rightFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.rightFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.rightFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.rightFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.rightFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.rightFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.rightSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.rightSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.rightSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.rightSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.rightSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.rightSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Вторник" {
            self.rightScheduleDayLabel.text! = "Среда"
            
            self.rightOneLessonNameLabel.text! = "Физкультура"
            self.rightOneLessonTimeLabel.text! = "8:30 - 9:15"
            self.rightOneLessonRoomLabel.text! = "Спортзал"
            
            self.rightTwoLessonNameLabel.text! = "Физкультура"
            self.rightTwoLessonTimeLabel.text! = "9:25 - 10:10"
            self.rightTwoLessonRoomLabel.text! = "42"
            
            self.rightThreeLessonNameLabel.text! = "История"
            self.rightThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.rightThreeLessonRoomLabel.text! = "41"
            
            self.rightFourLessonNameLabel.text! = "История"
            self.rightFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.rightFourLessonRoomLabel.text! = "41"
            
            self.rightFiveLessonNameLabel.text! = "Английский язык"
            self.rightFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.rightFiveLessonRoomLabel.text! = "45"
            
            self.rightSixLessonNameLabel.text! = "Алгебра"
            self.rightSixLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.rightSixLessonRoomLabel.text! = "45"
            
            self.rightSevenLessonNameLabel.text! = "Английский язык"
            self.rightSevenLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.rightSevenLessonRoomLabel.text! = "42"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.sizeToFit()
                self.rightOneLessonTimeLabel.sizeToFit()
                self.rightOneLessonRoomLabel.sizeToFit()
                
                self.rightTwoLessonNameLabel.sizeToFit()
                self.rightTwoLessonTimeLabel.sizeToFit()
                self.rightTwoLessonRoomLabel.sizeToFit()
                
                self.rightThreeLessonNameLabel.sizeToFit()
                self.rightThreeLessonTimeLabel.sizeToFit()
                self.rightThreeLessonRoomLabel.sizeToFit()
                
                self.rightFourLessonNameLabel.sizeToFit()
                self.rightFourLessonTimeLabel.sizeToFit()
                self.rightFourLessonRoomLabel.sizeToFit()
                
                self.rightFiveLessonNameLabel.sizeToFit()
                self.rightFiveLessonTimeLabel.sizeToFit()
                self.rightFiveLessonRoomLabel.sizeToFit()
                
                self.rightSixLessonNameLabel.sizeToFit()
                self.rightSixLessonTimeLabel.sizeToFit()
                self.rightSixLessonRoomLabel.sizeToFit()
                
                self.rightSevenLessonNameLabel.sizeToFit()
                self.rightSevenLessonTimeLabel.sizeToFit()
                self.rightSevenLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 4 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.rightScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.rightOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.rightOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.rightOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.rightTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.rightTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.rightTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.rightThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.rightThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.rightThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.rightFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.rightFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.rightFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.rightFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.rightFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.rightFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.rightSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.rightSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.rightSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.rightSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.rightSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.rightSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Среда" {
            self.rightScheduleDayLabel.text! = "Четверг"
            
            self.rightOneLessonNameLabel.text! = "Информатика"
            self.rightOneLessonTimeLabel.text! = "9:30 - 10:15"
            self.rightOneLessonRoomLabel.text! = "78"
            
            self.rightTwoLessonNameLabel.text! = "Информатика"
            self.rightTwoLessonTimeLabel.text! = "10:25 - 11:10"
            self.rightTwoLessonRoomLabel.text! = "78"
            
            self.rightThreeLessonNameLabel.text! = "Физика"
            self.rightThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.rightThreeLessonRoomLabel.text! = "43"
            
            self.rightFourLessonNameLabel.text! = "Физика"
            self.rightFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.rightFourLessonRoomLabel.text! = "43"
            
            self.rightFiveLessonNameLabel.text! = "Английский язык"
            self.rightFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.rightFiveLessonRoomLabel.text! = "42"
            
            self.rightSixLessonNameLabel.text! = "Физика"
            self.rightSixLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.rightSixLessonRoomLabel.text! = "43"
            
            self.rightSevenLessonNameLabel.text! = "Физика"
            self.rightSevenLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.rightSevenLessonRoomLabel.text! = "43"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.sizeToFit()
                self.rightOneLessonTimeLabel.sizeToFit()
                self.rightOneLessonRoomLabel.sizeToFit()
                
                self.rightTwoLessonNameLabel.sizeToFit()
                self.rightTwoLessonTimeLabel.sizeToFit()
                self.rightTwoLessonRoomLabel.sizeToFit()
                
                self.rightThreeLessonNameLabel.sizeToFit()
                self.rightThreeLessonTimeLabel.sizeToFit()
                self.rightThreeLessonRoomLabel.sizeToFit()
                
                self.rightFourLessonNameLabel.sizeToFit()
                self.rightFourLessonTimeLabel.sizeToFit()
                self.rightFourLessonRoomLabel.sizeToFit()
                
                self.rightFiveLessonNameLabel.sizeToFit()
                self.rightFiveLessonTimeLabel.sizeToFit()
                self.rightFiveLessonRoomLabel.sizeToFit()
                
                self.rightSixLessonNameLabel.sizeToFit()
                self.rightSixLessonTimeLabel.sizeToFit()
                self.rightSixLessonRoomLabel.sizeToFit()
                
                self.rightSevenLessonNameLabel.sizeToFit()
                self.rightSevenLessonTimeLabel.sizeToFit()
                self.rightSevenLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 5 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.rightScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.rightOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.rightOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.rightOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.rightTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.rightTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.rightTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.rightThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.rightThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.rightThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.rightFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.rightFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.rightFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.rightFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.rightFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.rightFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.rightSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.rightSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.rightSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.rightSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.rightSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.rightSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Четверг" {
            self.rightScheduleDayLabel.text! = "Пятница"
            
            self.rightOneLessonNameLabel.text! = "Литература"
            self.rightOneLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
            self.rightOneLessonRoomLabel.text! = "42"
            
            self.rightTwoLessonNameLabel.text! = "Литература"
            self.rightTwoLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
            self.rightTwoLessonRoomLabel.text! = "42"
            
            self.rightThreeLessonNameLabel.text! = "ОБЖ"
            self.rightThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.rightThreeLessonRoomLabel.text! = "43"
            
            self.rightFourLessonNameLabel.text! = "Геометрия"
            self.rightFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.rightFourLessonRoomLabel.text! = "44"
            
            self.rightFiveLessonNameLabel.text! = "Геометрия"
            self.rightFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.rightFiveLessonRoomLabel.text! = "44"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                // Friday
                self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 298)
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.sizeToFit()
                self.rightOneLessonTimeLabel.sizeToFit()
                self.rightOneLessonRoomLabel.sizeToFit()
                
                self.rightTwoLessonNameLabel.sizeToFit()
                self.rightTwoLessonTimeLabel.sizeToFit()
                self.rightTwoLessonRoomLabel.sizeToFit()
                
                self.rightThreeLessonNameLabel.sizeToFit()
                self.rightThreeLessonTimeLabel.sizeToFit()
                self.rightThreeLessonRoomLabel.sizeToFit()
                
                self.rightFourLessonNameLabel.sizeToFit()
                self.rightFourLessonTimeLabel.sizeToFit()
                self.rightFourLessonRoomLabel.sizeToFit()
                
                self.rightFiveLessonNameLabel.sizeToFit()
                self.rightFiveLessonTimeLabel.sizeToFit()
                self.rightFiveLessonRoomLabel.sizeToFit()
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 6 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            // Friday
            self.sixLessonNameLabel.alpha = 0
            self.sixLessonTimeLabel.alpha = 0
            self.sixLessonRoomLabel.alpha = 0
            self.sevenLessonNameLabel.alpha = 0
            self.sevenLessonTimeLabel.alpha = 0
            self.sevenLessonRoomLabel.alpha = 0
            
            self.scheduleDayLabel.text! = self.rightScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.rightOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.rightOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.rightOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.rightTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.rightTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.rightTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.rightThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.rightThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.rightThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.rightFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.rightFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.rightFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.rightFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.rightFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.rightFiveLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
        else if self.scheduleDayLabel.text! == "Пятница" {
            self.rightScheduleDayLabel.text! = "Понедельник"
            
            self.rightOneLessonNameLabel.text! = "Русский язык"
            self.rightOneLessonTimeLabel.text! = self.oneLessonTimeLabel.text!
            self.rightOneLessonRoomLabel.text! = "42"
            
            self.rightTwoLessonNameLabel.text! = "Русский язык"
            self.rightTwoLessonTimeLabel.text! = self.twoLessonTimeLabel.text!
            self.rightTwoLessonRoomLabel.text! = "42"
            
            self.rightThreeLessonNameLabel.text! = "Информатика"
            self.rightThreeLessonTimeLabel.text! = self.threeLessonTimeLabel.text!
            self.rightThreeLessonRoomLabel.text! = "78"
            
            self.rightFourLessonNameLabel.text! = "Информатика"
            self.rightFourLessonTimeLabel.text! = self.fourLessonTimeLabel.text!
            self.rightFourLessonRoomLabel.text! = "78"
            
            self.rightFiveLessonNameLabel.text! = "Физика"
            self.rightFiveLessonTimeLabel.text! = self.fiveLessonTimeLabel.text!
            self.rightFiveLessonRoomLabel.text! = "43"
            
            self.rightSixLessonNameLabel.text! = "Физика"
            self.rightSixLessonTimeLabel.text! = self.sixLessonTimeLabel.text!
            self.rightSixLessonRoomLabel.text! = "43"
            
            self.rightSevenLessonNameLabel.text! = "Электив"
            self.rightSevenLessonTimeLabel.text! = self.sevenLessonTimeLabel.text!
            self.rightSevenLessonRoomLabel.text! = "41 / 78"
            
            let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 5) {
                
                // Friday
                self.scheduleView.frame = CGRect(x: 0, y: 20, width: 375, height: 394)
                self.sixLessonNameLabel.alpha = 1
                self.sixLessonTimeLabel.alpha = 1
                self.sixLessonRoomLabel.alpha = 1
                self.sevenLessonNameLabel.alpha = 1
                self.sevenLessonTimeLabel.alpha = 1
                self.sevenLessonRoomLabel.alpha = 1
                
                self.scheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.oneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.twoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.threeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
                
                self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.rightOneLessonNameLabel.sizeToFit()
                self.rightOneLessonTimeLabel.sizeToFit()
                self.rightOneLessonRoomLabel.sizeToFit()
                
                self.rightTwoLessonNameLabel.sizeToFit()
                self.rightTwoLessonTimeLabel.sizeToFit()
                self.rightTwoLessonRoomLabel.sizeToFit()
                
                self.rightThreeLessonNameLabel.sizeToFit()
                self.rightThreeLessonTimeLabel.sizeToFit()
                self.rightThreeLessonRoomLabel.sizeToFit()
                
                self.rightFourLessonNameLabel.sizeToFit()
                self.rightFourLessonTimeLabel.sizeToFit()
                self.rightFourLessonRoomLabel.sizeToFit()
                
                self.rightFiveLessonNameLabel.sizeToFit()
                self.rightFiveLessonTimeLabel.sizeToFit()
                self.rightFiveLessonRoomLabel.sizeToFit()
                
                self.rightSixLessonNameLabel.sizeToFit()
                self.rightSixLessonTimeLabel.sizeToFit()
                self.rightSixLessonRoomLabel.sizeToFit()
                
                self.rightSevenLessonNameLabel.sizeToFit()
                self.rightSevenLessonTimeLabel.sizeToFit()
                self.rightSevenLessonRoomLabel.sizeToFit()
                
                self.sixLessonNameLabel.alpha = 1
                self.sixLessonTimeLabel.alpha = 1
                self.sixLessonRoomLabel.alpha = 1
                
                self.sevenLessonNameLabel.alpha = 1
                self.sevenLessonTimeLabel.alpha = 1
                self.sevenLessonRoomLabel.alpha = 1
                
                let date = Date()
                let calendar = Calendar.current
                let weekDay = calendar.component(.weekday, from: date)
                let hour = calendar.component(.hour, from: date)
                let minute = calendar.component(.minute, from: date)
                let currentTime = hour * 60 + minute
                if weekDay == 2 {
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
                } else {
                    self.oneLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.oneLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.oneLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.twoLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.twoLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.threeLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.threeLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fourLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fourLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.fiveLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.fiveLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sixLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sixLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonNameLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonTimeLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonRoomLabel.textColor = #colorLiteral(red: 0.2912400961, green: 0.3492290974, blue: 0.4721301794, alpha: 1)
                    self.sevenLessonNameLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonTimeLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                    self.sevenLessonRoomLabel.font = UIFont(name: "AvenirNext-Regular", size: 17)
                }
            }
            animator.startAnimation()
            
            self.scheduleDayLabel.text! = self.rightScheduleDayLabel.text!
            
            self.oneLessonNameLabel.text! = self.rightOneLessonNameLabel.text!
            self.oneLessonTimeLabel.text! = self.rightOneLessonTimeLabel.text!
            self.oneLessonRoomLabel.text! = self.rightOneLessonRoomLabel.text!
            
            self.twoLessonNameLabel.text! = self.rightTwoLessonNameLabel.text!
            self.twoLessonTimeLabel.text! = self.rightTwoLessonTimeLabel.text!
            self.twoLessonRoomLabel.text! = self.rightTwoLessonRoomLabel.text!
            
            self.threeLessonNameLabel.text! = self.rightThreeLessonNameLabel.text!
            self.threeLessonTimeLabel.text! = self.rightThreeLessonTimeLabel.text!
            self.threeLessonRoomLabel.text! = self.rightThreeLessonRoomLabel.text!
            
            self.fourLessonNameLabel.text! = self.rightFourLessonNameLabel.text!
            self.fourLessonTimeLabel.text! = self.rightFourLessonTimeLabel.text!
            self.fourLessonRoomLabel.text! = self.rightFourLessonRoomLabel.text!
            
            self.fiveLessonNameLabel.text! = self.rightFiveLessonNameLabel.text!
            self.fiveLessonTimeLabel.text! = self.rightFiveLessonTimeLabel.text!
            self.fiveLessonRoomLabel.text! = self.rightFiveLessonRoomLabel.text!
            
            self.sixLessonNameLabel.text! = self.rightSixLessonNameLabel.text!
            self.sixLessonTimeLabel.text! = self.rightSixLessonTimeLabel.text!
            self.sixLessonRoomLabel.text! = self.rightSixLessonRoomLabel.text!
            
            self.sevenLessonNameLabel.text! = self.rightSevenLessonNameLabel.text!
            self.sevenLessonTimeLabel.text! = self.rightSevenLessonTimeLabel.text!
            self.sevenLessonRoomLabel.text! = self.rightSevenLessonRoomLabel.text!
            
            self.scheduleDayLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.oneLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.oneLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.twoLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.twoLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.threeLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.threeLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fourLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fourLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.fiveLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.fiveLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sixLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sixLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.sevenLessonNameLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonTimeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            self.sevenLessonRoomLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            
            self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
            
            self.oneLessonNameLabel.sizeToFit()
            self.oneLessonTimeLabel.sizeToFit()
            self.oneLessonRoomLabel.sizeToFit()
            
            self.twoLessonNameLabel.sizeToFit()
            self.twoLessonTimeLabel.sizeToFit()
            self.twoLessonRoomLabel.sizeToFit()
            
            self.threeLessonNameLabel.sizeToFit()
            self.threeLessonTimeLabel.sizeToFit()
            self.threeLessonRoomLabel.sizeToFit()
            
            self.fourLessonNameLabel.sizeToFit()
            self.fourLessonTimeLabel.sizeToFit()
            self.fourLessonRoomLabel.sizeToFit()
            
            self.fiveLessonNameLabel.sizeToFit()
            self.fiveLessonTimeLabel.sizeToFit()
            self.fiveLessonRoomLabel.sizeToFit()
            
            self.sixLessonNameLabel.sizeToFit()
            self.sixLessonTimeLabel.sizeToFit()
            self.sixLessonRoomLabel.sizeToFit()
            
            self.sevenLessonNameLabel.sizeToFit()
            self.sevenLessonTimeLabel.sizeToFit()
            self.sevenLessonRoomLabel.sizeToFit()
        }
    }
    
    
    
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
        
        self.leftScheduleDayLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.leftOneLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftOneLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftOneLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.leftTwoLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftTwoLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftTwoLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.leftThreeLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftThreeLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftThreeLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.leftFourLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftFourLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftFourLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.leftFiveLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftFiveLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftFiveLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.leftSixLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftSixLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftSixLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.leftSevenLessonNameLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftSevenLessonTimeLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        self.leftSevenLessonRoomLabel.transform = CGAffineTransform(translationX: -375, y: 0)
        
        self.rightScheduleDayLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        self.rightOneLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightOneLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightOneLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        self.rightTwoLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightTwoLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightTwoLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        self.rightThreeLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightThreeLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightThreeLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        self.rightFourLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightFourLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightFourLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        self.rightFiveLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightFiveLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightFiveLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        self.rightSixLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightSixLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightSixLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        self.rightSevenLessonNameLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightSevenLessonTimeLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        self.rightSevenLessonRoomLabel.transform = CGAffineTransform(translationX: 375, y: 0)
        
        // MARK: NSDate
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let currentTime = hour * 60 + minute
        weekDay()
        getUserClass()
        
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
    override func viewDidAppear(_ animated: Bool) {
        weekDay()
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
            
            self.viewDidLoad()
            
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
        let weekOfYear = calendar.component(.weekOfYear, from: date)
        var dayOfWeek = "День недели"
        
        // MARK: Days of the week
        let db = Firestore.firestore()
        db.collection("users").whereField("userClass", isEqualTo: "Технологический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
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
                    self.scheduleDayLabel.text! = dayOfWeek
                }
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Экономический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    if weekOfYear % 2 == 0 {
                        if weekday == 2 {
                            dayOfWeek = "Понедельник"
                            self.oneLessonNameLabel.text! = "Английский язык"
                            self.oneLessonRoomLabel.text! = "45"
                            self.twoLessonNameLabel.text! = "Английский язык"
                            self.twoLessonRoomLabel.text! = "45"
                            self.threeLessonNameLabel.text! = "Русский язык"
                            self.threeLessonRoomLabel.text! = "42"
                            self.fourLessonNameLabel.text! = "Русский язык"
                            self.fourLessonRoomLabel.text! = "42"
                            self.fiveLessonNameLabel.text! = "Биология"
                            self.fiveLessonRoomLabel.text! = "44"
                            self.sixLessonNameLabel.text! = "Литература"
                            self.sixLessonRoomLabel.text! = "44"
                            self.sevenLessonNameLabel.text! = "Литература"
                            self.sevenLessonRoomLabel.text! = "44"
                        }
                        else if weekday == 3 {
                            dayOfWeek = "Вторник"
                            self.oneLessonNameLabel.text! = "Алгебра"
                            self.oneLessonRoomLabel.text! = "44"
                            self.twoLessonNameLabel.text! = "Обществознание"
                            self.twoLessonRoomLabel.text! = "44"
                            self.threeLessonNameLabel.text! = "Обществознание"
                            self.threeLessonRoomLabel.text! = "44"
                            self.fourLessonNameLabel.text! = "Обществознание"
                            self.fourLessonRoomLabel.text! = "42"
                            self.fiveLessonNameLabel.text! = "Английский язык"
                            self.fiveLessonRoomLabel.text! = "45"
                            self.sixLessonNameLabel.text! = "География"
                            self.sixLessonRoomLabel.text! = "44"
                            self.sevenLessonNameLabel.text! = "Алгебра"
                            self.sevenLessonRoomLabel.text! = "44"
                        }
                        else if weekday == 4 {
                            dayOfWeek = "Среда"
                            self.oneLessonNameLabel.text! = "Физкультура"
                            self.oneLessonTimeLabel.text! = "8:30 - 9:15"
                            self.oneLessonRoomLabel.text! = "Спортзал"
                            self.twoLessonNameLabel.text! = "Физкультура"
                            self.twoLessonTimeLabel.text! = "9:25 - 10:10"
                            self.twoLessonRoomLabel.text! = "Спортзал"
                            self.threeLessonNameLabel.text! = "Английский язык"
                            self.threeLessonRoomLabel.text! = "45"
                            self.fourLessonNameLabel.text! = "Алгебра"
                            self.fourLessonRoomLabel.text! = "44"
                            self.fiveLessonNameLabel.text! = "Алгебра"
                            self.fiveLessonRoomLabel.text! = "44"
                            self.sixLessonNameLabel.text! = "Литература"
                            self.sixLessonRoomLabel.text! = "44"
                            self.sevenLessonNameLabel.text! = "История"
                            self.sevenLessonRoomLabel.text! = "44"
                        }
                        else if weekday == 5 {
                            dayOfWeek = "Четверг"
                            self.oneLessonNameLabel.text! = "Геометрия"
                            self.oneLessonRoomLabel.text! = "44"
                            self.twoLessonNameLabel.text! = "Геометрия"
                            self.twoLessonRoomLabel.text! = "44"
                            self.threeLessonNameLabel.text! = "Английский язык"
                            self.threeLessonRoomLabel.text! = "45"
                            self.fourLessonNameLabel.text! = "Обществознание"
                            self.fourLessonRoomLabel.text! = "42"
                            self.fiveLessonNameLabel.text! = "География"
                            self.fiveLessonRoomLabel.text! = "45"
                            self.sixLessonNameLabel.text! = "География"
                            self.sixLessonRoomLabel.text! = "45"
                            self.sevenLessonNameLabel.text! = "История"
                            self.sevenLessonRoomLabel.text! = "44"
                        }
                        else if weekday == 6 {
                            dayOfWeek = "Пятница"
                            self.oneLessonNameLabel.text! = "ОБЖ"
                            self.oneLessonRoomLabel.text! = "44"
                            self.twoLessonNameLabel.text! = "Экономика"
                            self.twoLessonRoomLabel.text! = "44"
                            self.threeLessonNameLabel.text! = "Экономика"
                            self.threeLessonRoomLabel.text! = "44"
                            self.fourLessonNameLabel.text! = "Маркетинг"
                            self.fourLessonRoomLabel.text! = "45"
                            self.fiveLessonNameLabel.text! = "Экономика на Английском"
                            self.fiveLessonRoomLabel.text! = "42"
                        }
                        else if weekday == 7 {
                            dayOfWeek = "Суббота"
                        }
                        else if weekday == 1 {
                            dayOfWeek = "Воскресенье"
                        }
                        self.scheduleDayLabel.text! = dayOfWeek
                    }
                    else {
                        if weekday == 2 {
                            dayOfWeek = "Понедельник"
                            self.oneLessonNameLabel.text! = "Алгебра"
                            self.oneLessonRoomLabel.text! = "44"
                            self.twoLessonNameLabel.text! = "Алгебра"
                            self.twoLessonRoomLabel.text! = "44"
                            self.threeLessonNameLabel.text! = "Русский язык"
                            self.threeLessonRoomLabel.text! = "42"
                            self.fourLessonNameLabel.text! = "Русский язык"
                            self.fourLessonRoomLabel.text! = "42"
                            self.fiveLessonNameLabel.text! = "Биология"
                            self.fiveLessonRoomLabel.text! = "44"
                            self.sixLessonNameLabel.text! = "Литература"
                            self.sixLessonRoomLabel.text! = "44"
                            self.sevenLessonNameLabel.text! = "Литература"
                            self.sevenLessonRoomLabel.text! = "44"
                        }
                        else if weekday == 3 {
                            dayOfWeek = "Вторник"
                            self.oneLessonNameLabel.text! = "Алгебра"
                            self.oneLessonRoomLabel.text! = "44"
                            self.twoLessonNameLabel.text! = "Обществознание"
                            self.twoLessonRoomLabel.text! = "44"
                            self.threeLessonNameLabel.text! = "Обществознание"
                            self.threeLessonRoomLabel.text! = "44"
                            self.fourLessonNameLabel.text! = "География"
                            self.fourLessonRoomLabel.text! = "45"
                            self.fiveLessonNameLabel.text! = "Алгебра"
                            self.fiveLessonRoomLabel.text! = "44"
                            self.sixLessonNameLabel.text! = "География"
                            self.sixLessonRoomLabel.text! = "44"
                            self.sevenLessonNameLabel.text! = "Английский язык"
                            self.sevenLessonRoomLabel.text! = "42"
                        }
                        else if weekday == 4 {
                            dayOfWeek = "Среда"
                            self.oneLessonNameLabel.text! = "Физкультура"
                            self.oneLessonTimeLabel.text! = "8:30 - 9:15"
                            self.oneLessonRoomLabel.text! = "Спортзал"
                            self.twoLessonNameLabel.text! = "Физкультура"
                            self.twoLessonTimeLabel.text! = "9:25 - 10:10"
                            self.twoLessonRoomLabel.text! = "Спортзал"
                            self.threeLessonNameLabel.text! = "Геометрия"
                            self.threeLessonRoomLabel.text! = "44"
                            self.fourLessonNameLabel.text! = "Английский язык"
                            self.fourLessonRoomLabel.text! = "45"
                            self.fiveLessonNameLabel.text! = "Английский язык"
                            self.fiveLessonRoomLabel.text! = "42"
                            self.sixLessonNameLabel.text! = "Литература"
                            self.sixLessonRoomLabel.text! = "44"
                            self.sevenLessonNameLabel.text! = "История"
                            self.sevenLessonRoomLabel.text! = "44"
                        }
                        else if weekday == 5 {
                            dayOfWeek = "Четверг"
                            self.oneLessonNameLabel.text! = "Английский язык"
                            self.oneLessonRoomLabel.text! = "45"
                            self.twoLessonNameLabel.text! = "Английский язык"
                            self.twoLessonRoomLabel.text! = "45"
                            self.threeLessonNameLabel.text! = "Геометрия"
                            self.threeLessonRoomLabel.text! = "44"
                            self.fourLessonNameLabel.text! = "География"
                            self.fourLessonRoomLabel.text! = "45"
                            self.fiveLessonNameLabel.text! = "Обществознание"
                            self.fiveLessonRoomLabel.text! = "42"
                            self.sixLessonNameLabel.text! = "Обществознание"
                            self.sixLessonRoomLabel.text! = "42"
                            self.sevenLessonNameLabel.text! = "История"
                            self.sevenLessonRoomLabel.text! = "44"
                        }
                        else if weekday == 6 {
                            dayOfWeek = "Пятница"
                            self.oneLessonNameLabel.text! = "ОБЖ"
                            self.oneLessonRoomLabel.text! = "44"
                            self.twoLessonNameLabel.text! = "Экономика"
                            self.twoLessonRoomLabel.text! = "44"
                            self.threeLessonNameLabel.text! = "Экономика"
                            self.threeLessonRoomLabel.text! = "44"
                            self.fourLessonNameLabel.text! = "Маркетинг"
                            self.fourLessonRoomLabel.text! = "45"
                            self.fiveLessonNameLabel.text! = "Экономика на Английском"
                            self.fiveLessonRoomLabel.text! = "42"
                        }
                        else if weekday == 7 {
                            dayOfWeek = "Суббота"
                        }
                        else if weekday == 1 {
                            dayOfWeek = "Воскресенье"
                        }
                        self.scheduleDayLabel.text! = dayOfWeek
                    }
                }
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Гуманитарный").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    if weekday == 2 {
                        dayOfWeek = "Понедельник"
                        self.oneLessonNameLabel.text! = "Биология"
                        self.oneLessonRoomLabel.text! = "43"
                        self.twoLessonNameLabel.text! = "Информатика"
                        self.twoLessonRoomLabel.text! = "78"
                        self.threeLessonNameLabel.text! = "Алгебра"
                        self.threeLessonRoomLabel.text! = "44"
                        self.fourLessonNameLabel.text! = "Алгебра"
                        self.fourLessonRoomLabel.text! = "44"
                        self.fiveLessonNameLabel.text! = "Русский язык"
                        self.fiveLessonRoomLabel.text! = "42"
                        self.sixLessonNameLabel.text! = "Русский язык"
                        self.sixLessonRoomLabel.text! = "42"
                        self.sevenLessonNameLabel.text! = "Русский язык"
                        self.sevenLessonRoomLabel.text! = "42"
                    }
                    else if weekday == 3 {
                        dayOfWeek = "Вторник"
                        self.oneLessonNameLabel.text! = "Алгебра"
                        self.oneLessonRoomLabel.text! = "44"
                        self.twoLessonNameLabel.text! = "Обществознание"
                        self.twoLessonRoomLabel.text! = "44"
                        self.threeLessonNameLabel.text! = "Обществознание"
                        self.threeLessonRoomLabel.text! = "44"
                        self.fourLessonNameLabel.text! = "Литература"
                        self.fourLessonRoomLabel.text! = "42"
                        self.fiveLessonNameLabel.text! = "Английский язык"
                        self.fiveLessonRoomLabel.text! = "42"
                        self.sixLessonNameLabel.text! = "Английский язык"
                        self.sixLessonRoomLabel.text! = "42"
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
                        self.threeLessonNameLabel.text! = "Английский язык"
                        self.threeLessonRoomLabel.text! = "42"
                        self.fourLessonNameLabel.text! = "Алгебра"
                        self.fourLessonRoomLabel.text! = "44"
                        self.fiveLessonNameLabel.text! = "Алгебра"
                        self.fiveLessonRoomLabel.text! = "44"
                        self.sixLessonNameLabel.text! = "История"
                        self.sixLessonRoomLabel.text! = "42"
                        self.sevenLessonNameLabel.text! = "История"
                        self.sevenLessonRoomLabel.text! = "44"
                    }
                    else if weekday == 5 {
                        dayOfWeek = "Четверг"
                        self.oneLessonNameLabel.text! = "Обществознание"
                        self.oneLessonRoomLabel.text! = "42"
                        self.twoLessonNameLabel.text! = "Обществознание"
                        self.twoLessonRoomLabel.text! = "42"
                        self.threeLessonNameLabel.text! = "Английский язык"
                        self.threeLessonRoomLabel.text! = "42"
                        self.fourLessonNameLabel.text! = "Английский язык"
                        self.fourLessonRoomLabel.text! = "42"
                        self.fiveLessonNameLabel.text! = "История"
                        self.fiveLessonRoomLabel.text! = "44"
                        self.sixLessonNameLabel.text! = "История"
                        self.sixLessonRoomLabel.text! = "44"
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
                        self.fourLessonNameLabel.text! = "Маркетинг"
                        self.fourLessonRoomLabel.text! = "45"
                        self.fiveLessonNameLabel.text! = "Экономика"
                        self.fiveLessonRoomLabel.text! = "42"
                    }
                    else if weekday == 7 {
                        dayOfWeek = "Суббота"
                    }
                    else if weekday == 1 {
                        dayOfWeek = "Воскресенье"
                    }
                    self.scheduleDayLabel.text! = dayOfWeek
                }
            }
        }
    }
    func getUserClass() {
        let db = Firestore.firestore()
        db.collection("users").whereField("userClass", isEqualTo: "Технологический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    self.userClass = "Технологический"
                }
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Экономический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    self.userClass = "Экономический"
                }
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Гуманитарный").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    self.userClass = "Гуманитарный"
                }
            }
        }
        db.collection("users").whereField("userClass", isEqualTo: "Биологический").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    self.userClass = "Биологический"
                }
            }
        }
    }
}
