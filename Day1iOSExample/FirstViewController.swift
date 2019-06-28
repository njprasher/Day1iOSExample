//
//  FirstViewController.swift
//  Day1iOSExample
//
//  Created by Neeraj Prasher on 2019-06-28.
//  Copyright © 2019 njprasher. All rights reserved.
//
import UIKit
class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogin(_ sender: UIButton){
        //Step - 1
        //Create AlertController Object
        let alert  =
            UIAlertController(title: "Message", message: "Welcome to iOS Programming", preferredStyle: UIAlertController.Style.actionSheet)
        
        //Step - 2
        //OK Button add
        let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
            print("Alert OK")
            
        })
        
        //Step - 3
        alert.addAction(actionOk)
        
        //Step - 2 Repeated
        //Cancel Button add
        let actionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        
        //Step - 3 Repeated
        alert.addAction(actionCancel)
        
        //Step - 2 Repeated
        //Ignore Button add
        let actionIgnore = UIAlertAction(title: "Ignore", style: UIAlertAction.Style.destructive, handler: nil)
        
        //Step - 3 Repeated
        alert.addAction(actionIgnore)
        
        
        //Step - 4
        //Present Alert Dialog to the user
        self.present(alert, animated: true, completion: nil)
    }
    
    
   

}
