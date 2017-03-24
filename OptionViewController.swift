//
//  OptionViewController.swift
//  Qup
//
//  Created by Jovan Cvetic on 2017-03-24.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit


class OptionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var Backgroundcolor: UIPickerView!
    let defaults = UserDefaults.standard
    
    let backgroundColorArray = ["Default", "Blue", "Red"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Backgroundcolor.delegate = self
        Backgroundcolor.dataSource = self
        
        defaultSetting()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = LoadOptions.backgroundColor()
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
    func defaultSetting() {
        if let savedSetting = defaults.object(forKey: "backgroundColor") as? String {
            let index = backgroundColorArray.index(of: savedSetting)!
            Backgroundcolor.selectRow(index, inComponent: 0, animated: false)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return backgroundColorArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return backgroundColorArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch backgroundColorArray[row] {
        case "Blue":
            defaults.set("Blue", forKey: "backgroundColor")
        case "Red":
            defaults.set("Red", forKey: "backgroundColor")
        default:
            defaults.set("Default", forKey: "backgroundColor")
        }
        self.view.backgroundColor = LoadOptions.backgroundColor()
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
