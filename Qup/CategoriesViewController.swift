//
//  CategoriesViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-02.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func eplButton(_ sender: Any) {
        self.performSegue(withIdentifier:"goToQuestions" , sender: sender)
    }
    @IBAction func serieaButton(_ sender: Any) {
        self.performSegue(withIdentifier:"goToQuestions" , sender: sender)
    }
    @IBAction func bundesligaButton(_ sender: Any) {
        self.performSegue(withIdentifier:"goToQuestions" , sender: sender)
    }
    @IBAction func primeiraligaButton(_ sender: Any) {
        self.performSegue(withIdentifier:"goToQuestions" , sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuestions" {
            let destination = segue.destination as! questionviewViewController
            let senderButton = sender as! UIButton
            
            if senderButton.tag == 1 {
                destination.questionsArray = Loadquestions.Englishpremierleague()
            }
            
            if senderButton.tag == 2 {
                destination.questionsArray = Loadquestions.Seriea()
            }
            
            if senderButton.tag == 3 {
                destination.questionsArray = Loadquestions.Bundesliga()
            }
        }
    }
    
    @IBAction func unwindToCategories(segue: UIStoryboardSegue) {
        
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
