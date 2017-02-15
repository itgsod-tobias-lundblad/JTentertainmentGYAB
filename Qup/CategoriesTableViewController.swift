//
//  CategoriesTableViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-02-10.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
            
        } else if indexPathRow == 1 {
            destination.questionsArray = Loadquestions.Seriea()
        } else if indexPathRow == 2 {
            destination.questionsArray = Loadquestions.Bundesliga()
        } else if indexPathRow == 3 {
            destination.questionsArray = Loadquestions.Primeiraliga()
        } else if indexPathRow == 4 {
            destination.questionsArray = Loadquestions.Allsvenskan()
        } else if indexPathRow == 5 {
            destination.questionsArray = Loadquestions.Laliga()
        }
    }
    
    @IBAction func unwindToCategories(segue: UIStoryboardSegue) {
        
    }

}
