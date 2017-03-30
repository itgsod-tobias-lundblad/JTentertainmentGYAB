//
//  ViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-01-18.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = LoadOptions.backgroundColor()
        changeButtonColor()
    }
    
    func changeButtonColor() {
        let color = LoadOptions.buttonColor()
        button1.backgroundColor = color
        button2.backgroundColor = color
    }

}

