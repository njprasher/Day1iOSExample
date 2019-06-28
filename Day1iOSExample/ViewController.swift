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
        let x = Float(self.txtMessage.text!)
        let y = Float(self.txtMessage2.text!)
        if x != nil && y != nil{
                self.lblMessage.text = String(x! + y!)
            }
    }
    
    @IBAction func btnMul(_ sender: UIButton) {
        let x = Float(self.txtMessage.text!)
        let y = Float(self.txtMessage2.text!)
        if x != nil && y != nil{
            self.lblMessage.text = String(x! * y!)
        }
    }
    
    @IBAction func btnSub(_ sender: UIButton) {
        let x = Float(self.txtMessage.text!)
        let y = Float(self.txtMessage2.text!)
        if x != nil && y != nil{
            self.lblMessage.text = String(x! - y!)
        }
    }
    
    @IBAction func btnDiv(_ sender: UIButton) {
        let x = Float(self.txtMessage.text!)
        let y = Float(self.txtMessage2.text!)
        if x != nil && y != nil{
            self.lblMessage.text = String(x! / y!)
        }
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        self.txtMessage.text = ""
        self.txtMessage2.text = ""
        self.lblMessage.text = "Answer"
    }
    
    
    @IBAction func btnMessage(_ sender: UIButton) {
        let x = Float(self.txtMessage.text!)
        let y = Float(self.txtMessage2.text!)
        if x == nil && y == nil{
        self.lblMessage.text = "Are \(self.txtMessage.text!) and \(self.txtMessage2.text!) numbers?"
        }else{
            if x == nil || y == nil{
                if x == nil{
                self.lblMessage.text = "Is \(self.txtMessage.text!) a number?"
                }else{
                    if y == nil{
                    self.lblMessage.text = "Is \(self.txtMessage2.text!) a number?"
                    }
                }
                
            }
        }
    }
}

