//
//  SettingViewController.swift
//  Tipster
//
//  Created by Nicholas Chung on 1/7/17.
//  Copyright © 2017 Nicholas Chung. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    weak var delegate: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
         UserDefaults.standard.setValue(defaultTipControl.selectedSegmentIndex, forKey: "tipPercentKey")
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
