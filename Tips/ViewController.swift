//
//  ViewController.swift
//  Tips
//
//  Created by BRAHMBHATT JAY  on 1/8/19.
//  Copyright © 2019 BRAHMBHATT JAY . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var tipLabel: UILabel!
@IBOutlet weak var totalLabel: UILabel!
@IBOutlet weak var billField: UITextField!
@IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    
    @IBAction func tapdisappear(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculatetip(_ sender: Any) {
        let tippercentage = [0.18,0.20,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tippercentage[tipControl.selectedSegmentIndex]
        let total = bill+tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

