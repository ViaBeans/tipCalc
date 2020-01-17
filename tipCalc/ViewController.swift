//
//  ViewController.swift
//  tipCalc
//
//  Created by Vishisht  Jain on 1/14/20.
//  Copyright © 2020 Vishisht  Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    var tipPercentages = [0.15, 0.2, 0.22]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onInfoEnter(_ sender: Any) {
        let bill = Double(billAmount.text!) ?? 0
            
        let tip = bill * tipPercentages[tipPercentage.selectedSegmentIndex] 
        let total = tip + bill
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        var TF, TS, TT: Double
        
        if (UserDefaults.standard.object(forKey: "TF") != nil) {
             TF = UserDefaults.standard.double(forKey: "TF")
        } else {
             TF = 0.15
        }
        
        if (UserDefaults.standard.object(forKey: "TS") != nil) {
             TS = UserDefaults.standard.double(forKey: "TS")
        } else {
             TS = 0.2
        }
        
        if (UserDefaults.standard.object(forKey: "TT") != nil) {
             TT = UserDefaults.standard.double(forKey: "TT")
        } else {
             TT = 0.22
        }
        
        //finish this bit of code
        
        
        tipPercentage.setTitle("\(TF*100)%", forSegmentAt: 0)
        tipPercentage.setTitle("\(TS*100)%", forSegmentAt: 1)
        tipPercentage.setTitle("\(TT*100)%", forSegmentAt: 2)
        
        tipPercentages = [TF, TS, TT]
    }
}

