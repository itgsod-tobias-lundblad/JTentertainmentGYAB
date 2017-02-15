//
//  questionviewViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-02.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit

class questionviewViewController: UIViewController {
    @IBOutlet weak var question: UILabel!

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    var questionsArray = [Question]()
    
    @IBOutlet weak var questionCount: UILabel!
    var correctCount = 0
    var currentQuestionInt = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(questionsArray)
        loadQuestion()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadQuestion() {
        question.text = questionsArray[currentQuestionInt].question
        option1.setTitle(questionsArray[currentQuestionInt].option1, for: .normal)
        option2.setTitle(questionsArray[currentQuestionInt].option2, for: .normal)
        option3.setTitle(questionsArray[currentQuestionInt].option3, for: .normal)
        option4.setTitle(questionsArray[currentQuestionInt].option4, for: .normal)
        
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
            destination.resultString = "\(correctCount)/\(questionsArray.count)"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
