//
//  questionviewViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-02.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit
import GameplayKit

class questionviewViewController: UIViewController {
    @IBOutlet weak var question: UILabel!

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    var questionsArray = [Question]()
    var currentquiz = 0
    @IBOutlet weak var questionCount: UILabel!
    var correctCount = 0
    var currentQuestionInt = 0
    override func viewDidLoad() {
        option1.isExclusiveTouch = true
        option2.isExclusiveTouch = true
        option3.isExclusiveTouch = true
        option4.isExclusiveTouch = true
        super.viewDidLoad()
        print(questionsArray)
        shuffle()
        loadQuestion()
        // Do any additional setup after loading the view.
    }

    func shuffle() {
      questionsArray = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: questionsArray) as! [Question]
    }
    
    func shuffleoptions() -> [String]{
        let currentQuestion = questionsArray[currentQuestionInt]
        
        var optionsArray = [currentQuestion.option1, currentQuestion.option2, currentQuestion.option3, currentQuestion.option4]
        
        optionsArray = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: optionsArray) as! [String]
        
        return optionsArray
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadQuestion() {
        let optionsArray = shuffleoptions()
        
        question.text = questionsArray[currentQuestionInt].question
        option1.setTitle(optionsArray[0], for: .normal)
        option2.setTitle(optionsArray[1], for: .normal)
        option3.setTitle(optionsArray[2], for: .normal)
        option4.setTitle(optionsArray[3], for: .normal)
        
        questionCount.text = "\(currentQuestionInt + 1)/\(questionsArray.count)"
    }
    
    @IBAction func option1(_ sender: Any) {
        goToNextQuestion(sender: sender)
    }
    
    @IBAction func option2(_ sender: Any) {
        goToNextQuestion(sender: sender)
    }
    
    @IBAction func option3(_ sender: Any) {
        goToNextQuestion(sender: sender)
    }
  
    @IBAction func option4(_ sender: Any) {
        goToNextQuestion(sender: sender)
    }
    
    func goToNextQuestion(sender: Any) {
        buttonswitchoff()
        let senderButton = sender as! UIButton
        if senderButton.currentTitle == questionsArray[currentQuestionInt].correctAnswer {
            senderButton.backgroundColor = UIColor.green
            correctCount += 1
            print(correctCount)
        } else {
            senderButton.backgroundColor = UIColor.red
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
        
        senderButton.backgroundColor = UIColor.magenta
        self.buttonswitchOn()
        if self.currentQuestionInt < self.questionsArray.count - 1 {
            self.currentQuestionInt += 1
            self.loadQuestion()
        } else {
            self.performSegue(withIdentifier:"showResults" , sender: sender)
        }
        })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let destination = segue.destination as! ResultsViewController
            destination.resultInt = correctCount
            destination.questioncount = questionsArray.count
            destination.currentquiz = currentquiz
        }
    }
    // MARK: Helper Methods
    func buttonswitchOn(){
        option1.isEnabled = true
        option2.isEnabled = true
        option3.isEnabled = true
        option4.isEnabled = true
    }
    func buttonswitchoff(){
        option1.isEnabled = false
        option2.isEnabled = false
        option3.isEnabled = false
        option4.isEnabled = false
    }

}
