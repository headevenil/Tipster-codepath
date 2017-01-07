//
//  ViewController.swift
//  Tipster
//
//  Created by Nicholas Chung on 1/5/17.
//  Copyright © 2017 Nicholas Chung. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    let tipPercentages = [0.05, 0.1, 0.15]
    public var defaultTipControlIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountField.becomeFirstResponder()
        
        amountField.text = UserDefaults.standard.value(forKey: "billKey") as! String?
        self.tipControl.selectedSegmentIndex = UserDefaults.standard.value(forKey: "tipPercentKey") as! Int? ?? 0
        updateTipAlgo()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        amountField.becomeFirstResponder()
    }

    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.setValue(amountField.text, forKey: "billKey")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateTip(_ sender: Any) {
        updateTipAlgo()
    }
    
    func updateTipAlgo() {
        let bill = Double(amountField.text!) ?? 0
        let tip = tipPercentages[tipControl.selectedSegmentIndex] * bill
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}
