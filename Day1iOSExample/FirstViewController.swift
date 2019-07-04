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
    
    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func loginClick(_ sender: UIButton) {
        if(txtUserEmail.text! == "admin@gmail.com" && txtPassword.text! == "admin123"){
                print("Hello, My First Click: ", txtUserEmail.text!)
                
        let sb = UIStoryboard(name: "Main", bundle: nil)
                
        let userVC = sb.instantiateViewController(withIdentifier: "UserVC") as! UserViewController
        userVC.emailId = self.txtUserEmail.text
        
        self.navigationController?.pushViewController(userVC, animated: true)
            }else{
            //user not exist
            
            let alert = UIAlertController(title: "Error", message: "User Email / Password Incorrect", preferredStyle: UIAlertController.Style.alert)
            //Step 2 OK Button Add
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            let actionDis = UIAlertAction(title: "Destructive", style: UIAlertAction.Style.destructive, handler: nil)
            let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            
            //Step 3 Add button To Alert
            alert.addAction(actionOk)
            alert.addAction(actionCanel)
            alert.addAction(actionDis)
            
            
            // Step 4 Present Alert Box To user
            self .present(alert, animated: true ,completion: nil)
        }
        
            }
    }
