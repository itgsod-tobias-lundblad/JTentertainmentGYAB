//
//  OptionViewController.swift
//  Qup
//
//  Created by Jovan Cvetic on 2017-03-24.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit


class OptionViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func resetbutton(_ sender: Any) {
        defaults.set(nil, forKey: "0")
        defaults.set(nil, forKey: "1")
        defaults.set(nil, forKey: "2")
        defaults.set(nil, forKey: "3")
        defaults.set(nil, forKey: "4")
        defaults.set(nil, forKey: "5")
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
