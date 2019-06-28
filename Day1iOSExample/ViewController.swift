//
//  ViewController.swift
//  Day1iOSExample
//
//  Created by Neeraj Prasher on 2019-06-27.
//  Copyright © 2019 njprasher. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var lblMessage: UILabel!
    
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var txtMessage2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        let x = Int(self.txtMessage.text!)
        let y = Int(self.txtMessage2.text!)
        if x != nil{
            if y != nil{
                self.lblMessage.text = String(x! + y!)
            }else{
                self.lblMessage.text = "Please enter both as numbers"
                }
        }else{
            self.lblMessage.text = "Please enter both as numbers"
        }
    }
}

