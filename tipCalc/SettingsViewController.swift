//
//  SettingsViewController.swift
//  tipCalc
//
//  Created by Vishisht  Jain on 1/15/20.
//  Copyright © 2020 Vishisht  Jain. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipFirst: UITextField!
    @IBOutlet weak var tipSecond: UITextField!
    @IBOutlet weak var tipThird: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func enteredTF(_ sender: Any) {
        UserDefaults.standard.set(Double(tipFirst.text!) ?? 0.15, forKey:"TF")
    }
    
    @IBAction func enteredTT(_ sender: Any) {
        UserDefaults.standard.set(Double(tipThird.text!) ?? 0.20, forKey:"TT")
    }
    
    @IBAction func enteredTS(_ sender: Any) {
        UserDefaults.standard.set(Double(tipSecond.text!) ?? 0.22, forKey:"TS")
    }
    
}
