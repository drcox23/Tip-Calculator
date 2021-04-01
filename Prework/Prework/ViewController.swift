//
//  ViewController.swift
//  Prework
//
//  Created by Cox, Douglas on 3/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
        billAmountTextField.becomeFirstResponder()
        
        let defaults = UserDefaults.standard
        
        
    }
    
   // override func viewWillAppear(_ animated: Bool) {
     //   super.viewWillAppear(animated)
       
       // let defaults = UserDefaults.standard
        
       // let index = defaults.integer(forKey: "defaultTipSelect")
        
      
        
    //}

    @IBAction func calculateTip(_ sender: Any) {
        updateTotal()
        
    }
    
    @objc func handleTap() {
        updateTotal()
    }
    

    
    func updateTotal(){
        //Get bill amount
        let bill = Double (billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tip percentage
        let tipPercentage = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
  
    
}
