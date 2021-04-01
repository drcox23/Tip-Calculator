//
//  SettingsViewController.swift
//  Prework
//
//  Created by Cox, Douglas on 3/31/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        
        let defaultPercent = defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipSelect")
        defaults.synchronize()
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let defaults = UserDefaults.standard
        
        
        
    }

}
