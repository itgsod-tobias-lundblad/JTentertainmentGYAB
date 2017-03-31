//
//  OptionViewController.swift
//  Qup
//
//  Created by Jovan Cvetic on 2017-03-24.
//  Copyright © 2017 Quizz. All rights reserved.
//

import UIKit


class OptionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var resetButton: UIButton!
    
    @IBOutlet var Backgroundcolor: UIPickerView!
    @IBOutlet var ButtonColor: UIPickerView!
    let defaults = UserDefaults.standard
    
    let backgroundColorArray = ["Default", "Blue", "Red", "Yellow", "Orange", "Purple"]
    let buttonColorArray = ["Default", "White", "Grey", "Blue", "Purple"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Backgroundcolor.delegate = self
        Backgroundcolor.dataSource = self
        
        ButtonColor.delegate = self
        ButtonColor.dataSource = self
        
        loadButtonColor()
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
    
    func loadButtonColor() {
        resetButton.backgroundColor = LoadOptions.buttonColor()
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
        
        if let savedButtonSetting = defaults.object(forKey: "ButtonColor") as? String {
            let index = buttonColorArray.index(of: savedButtonSetting)!
            ButtonColor.selectRow(index, inComponent: 0, animated: false)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return backgroundColorArray.count
        } else {
            return buttonColorArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return backgroundColorArray[row]
        } else {
            return buttonColorArray[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            switch backgroundColorArray[row] {
            case "Blue":
                defaults.set("Blue", forKey: "backgroundColor")
            case "Red":
                defaults.set("Red", forKey: "backgroundColor")
            case "Yellow":
                defaults.set("Yellow", forKey: "backgroundColor")
            case "Orange":
                defaults.set("Orange", forKey: "backgroundColor")
            case "Purple":
                defaults.set("Purple", forKey: "backgroundColor")
            default:
                defaults.set("Default", forKey: "backgroundColor")
            }
            self.view.backgroundColor = LoadOptions.backgroundColor()
        } else {
            switch buttonColorArray[row] {
            case "White":
                defaults.set("White", forKey: "ButtonColor")
            case "Grey":
                defaults.set("Grey", forKey: "ButtonColor")
            case "Blue":
                defaults.set("Blue", forKey: "ButtonColor")
            case "Purple":
                defaults.set("Purple", forKey: "ButtonColor")
            default:
                defaults.set("Default", forKey: "ButtonColor")
            }
            loadButtonColor()
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
