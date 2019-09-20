//
//  ViewControllerProfile.swift
//  In Class 04
//
//  Created by Sarah on 9/13/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewControllerProfile: UIViewController {

    //USE OPTIONAL: EITHER NIL OR A VALUE
    var firstName:String?
    var emailString:String?
    var password:String?
    var department:String?
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var departmentLabel: UILabel!
    
 
    @IBAction func showPassword(_ sender: UIButton) {
        self.passwordLabel.text = password
        if(self.title == "show") {
        sender.setTitle("hide", for: .normal)
        }
            
        else {
            sender.setTitle("show", for: .normal)
        }
        
    }
    
    @IBAction func editName(_ sender: UIButton) {
        
    }
    
    
    @IBAction func editEmail(_ sender: UIButton) {
        
    }
    
    
    @IBAction func editPassword(_ sender: UIButton) {
        
    }
    
    
    @IBAction func editDepartment(_ sender: UIButton) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      self.firstNameLabel.text = firstName
      self.emailLabel.text = emailString
        
        
        self.passwordLabel.text = String(repeating: "*", count: password!.count)
        
        
        self.departmentLabel.text = department

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func closedClicked(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
        //some code to do next
            print("Close button clicked")
        }
    }
    



