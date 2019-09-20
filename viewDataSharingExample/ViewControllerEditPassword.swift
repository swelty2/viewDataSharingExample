//
//  ViewControllerEditPassword.swift
//  In class assignment 03
//
//  Created by Sarah on 9/16/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewControllerEditPassword: UIViewController {

    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var password:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.passwordTextField.text = password
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func updatePasswordCancelSelected(_ sender: UIButton) {
        self.dismiss(animated: true) {
            
        }
        //some code to do next
        print("Close button clicked")
    }
    
   
    //step before segue is happening
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare for segue called from Update Password View")
        
        //cast and receive new vc
        let destinationVC = segue.destination as! ViewControllerProfile
        //pass the user input to next view controller
        
        destinationVC.password = self.passwordTextField.text
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
