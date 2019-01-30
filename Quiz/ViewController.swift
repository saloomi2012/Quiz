//
//  ViewController.swift
//  Quiz
//
//  Created by Suliman Alsaid on 1/28/19.
//  Copyright © 2019 Suliman Alsaid. All rights reserved.
//  High Point University

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "Who invented C++?",
        "What is the liquid component of blood called?",
        "How many holes are there in a Ritz cracker?",//
        "What year did Hawaii become a US state?",
        "What gives beer its distinctive bitter flavour?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Bjarne Stroustrup",
        "Plasma",
        "7",
        "1959",
        "Hops"
    ]
    
    var currentQuestionIndex: Int = 0
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if(currentQuestionIndex == questions.count) {
            currentQuestionIndex = 0
        }
        
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = answers[currentQuestionIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

}

