//
//  ViewController.swift
//  Qup
//
//  Created by Tobias Lundblad on 2017-01-18.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var items: [String] = ["English Premier League", "La Liga", "Bundesliga", "Allsvenskan", "Serie A", "Primera Liga"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet
    var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt cellForRowAtIndexPath: IndexPath) -> UITableViewCell {
      
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt didSelectRowAtIndexPath: IndexPath) {
    }
}





