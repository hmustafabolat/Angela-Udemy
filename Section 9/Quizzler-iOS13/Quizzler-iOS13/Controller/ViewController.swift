//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        //Kullanıcının tıkladığı butonun metnini alır.
        let userAnswer = sender.currentTitle //True, false
        //Şu anki sorunun doğru cevabını alır.
        let userGotItRight = quizBrain.checkAnswer(userAnswer!)
        
        //Kullanıcının yanıtı kontrol edilir.
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            //print("Right!") //Kullanıcının yanıtı doğru ise
        }else{
            sender.backgroundColor = UIColor.red
            //print("Wrong!") //Kullanıcının yanıtı yanlış ise
        }
        
        quizBrain.nextQuestion()
        
        //Kullanıcı butona bastığında 2 saniyelik bir gecikme ile updateUI fonksiyonunu çalıştırır.
        Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    //Kullanıcı arayüzünü güncellemek için kullanılan fonksiyon.
    @objc func updateUI(){
        //Şu anki soru metnini questionLabel'da gösterir.
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        //Butona tıklandığında arka plan rengini doğal rengine getirir.
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
}

