//
//  CategoriesTableViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-10.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    
    @IBOutlet var Highscore0: UILabel!
    @IBOutlet var Highscore1: UILabel!
    @IBOutlet var Highscore2: UILabel!
    @IBOutlet var Highscore3: UILabel!
    @IBOutlet var Highscore4: UILabel!
    @IBOutlet var Highscore5: UILabel!

    
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        Highscore0.text = defaults.string(forKey: "0")
        Highscore1.text = defaults.string(forKey: "1")
        Highscore2.text = defaults.string(forKey: "2")
        Highscore3.text = defaults.string(forKey: "3")
        Highscore4.text = defaults.string(forKey: "4")
        Highscore5.text = defaults.string(forKey: "5")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showQuestion", sender: indexPath)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPathRow = (sender as! NSIndexPath).row
        let destination = segue.destination as! questionviewViewController
        if indexPathRow == 0 {
            destination.questionsArray = Loadquestions.Englishpremierleague()
            destination.currentquiz = 0
            
        } else if indexPathRow == 1 {
            destination.questionsArray = Loadquestions.Seriea()
            destination.currentquiz = 1
        } else if indexPathRow == 2 {
            destination.questionsArray = Loadquestions.Bundesliga()
            destination.currentquiz = 2
        } else if indexPathRow == 3 {
            destination.questionsArray = Loadquestions.Primeiraliga()
            destination.currentquiz = 3
        } else if indexPathRow == 4 {
            destination.questionsArray = Loadquestions.Allsvenskan()
            destination.currentquiz = 4
        } else if indexPathRow == 5 {
            destination.questionsArray = Loadquestions.Laliga()
            destination.currentquiz = 5
        }
    }
    
    @IBAction func unwindToCategories(segue: UIStoryboardSegue) {
        
    }

}
