//
//  ViewController.swift
//  viewDataSharingExample
//
//  Created by Haley on 9/13/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //class variables
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var departmentSegment: UISegmentedControl!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    //step before segue is happening
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare for segue called!!")
        if (segue.identifier == "HomeToProfileSegue") {
            print("triggering HomeToProfileSegue")
            //cast and receive new vc
            let destinationVC = segue.destination as! ViewControllerProfile
            //pass the user input to next view controller
            
            destinationVC.firstName = self.firstNameTextField.text
            destinationVC.department = self.departmentSegment.titleForSegment(at: departmentSegment.selectedSegmentIndex)
            destinationVC.index = self.departmentSegment.selectedSegmentIndex
            
            destinationVC.emailString = self.emailTextField.text
            destinationVC.password = self.passwordTextField.text
            

        }
    }//end of prepare method
    
    
    //Can stop segue- happens BEFORE segue occurs
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "HomeToProfileSegue" {
            //check if user input is empy
            if (self.firstNameTextField.text == "" || self.emailTextField.text == "" ||  self.passwordTextField.text == "" ) {
                
                //alert user that first name field is empty
                let alert = UIAlertController(title: "Error", message: "Please enter ALL fields", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                return false
            }//end if
            
            
            
            else {
             return true
            }//end else
        }//end of if

        return true
 
    }//end of method
    
}// END OF CLASS

