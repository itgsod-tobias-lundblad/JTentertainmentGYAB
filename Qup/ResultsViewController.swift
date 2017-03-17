//
//  ResultsViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-03.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet var Score: UILabel!
    @IBOutlet var NewScore: UILabel!
    
    let defaults = UserDefaults.standard
    
    
    
    var questioncount: Int = 0
    var resultInt: Int = 0
    var currentquiz = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        result.text = "\(resultInt)/\(questioncount)"
        showhighscore()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showhighscore(){
        let currentQuizString = String(currentquiz)
        let scoreString = defaults.string(forKey: currentQuizString)
        
        if (scoreString == nil || Int(scoreString!)! < resultInt) {
            defaults.set(resultInt, forKey: currentQuizString)
            NewScore.isHidden = false
        }
        Score.text = defaults.string(forKey: currentQuizString)! + "/\(questioncount)"
        
        
        
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
