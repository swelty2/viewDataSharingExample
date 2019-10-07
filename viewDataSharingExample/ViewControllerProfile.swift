//
//  ViewControllerProfile.swift
//  In Class Assignment 03
//
//  Created by Sarah on 9/17/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewControllerProfile: UIViewController {

    //USE OPTIONAL: EITHER NIL OR A VALUE
    var firstName:String?
    var emailString:String?
    var password:String?
    var department:String?
    
    var index:Int?
    var hiddenText :String = ""

    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var deptSegment: UILabel!

 

    
    @IBAction func showPassword(_ sender: UIButton) {
        self.passwordLabel.text = password
        
        if(sender.titleLabel?.text == "Show"){
            self.passwordLabel.text = self.password!
            sender.setTitle("Hide", for: .normal)
        } else {
            sender.setTitle("Show", for: .normal)
            self.passwordLabel.text = self.password!
            hiddenText.removeAll()
            var max = self.password!.count
            max -= 1
            for _ in 0...max {
                self.hiddenText.append("*")
            }
            self.passwordLabel.text = self.hiddenText
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
print("viewDidLoad")
        // Do any additional setup after loading the view.
    }

    

    
    @IBAction func closeClick(_ sender: UIButton) {
        self.dismiss(animated: true) {
            
        }
        //some code to do next
        print("Close button clicked")
    }
    
    
    
    @IBAction func update(segue: UIStoryboardSegue) {
        print("Unwind to Root View Controller called from VCProfile")
       self.firstNameLabel.text = self.firstName!
        self.emailLabel.text = self.emailString!
        self.deptSegment.text = self.department!
        self.passwordLabel.text = self.password!
        hiddenText.removeAll()
        var max = self.password!.count
        max -= 1
        for _ in 0...max {
            self.hiddenText.append("*")
        }
        self.passwordLabel.text = self.hiddenText        /*
         
         if(unwindSegue.identifier == "profileEditNameSegue") {
         self.firstNameLabel.text = firstName
         } else if(unwindSegue.identifier == "unwindFromEmailToProfile") {
         self.emailLabel.text = emailString
         } else if(unwindSegue.identifier == "profileEditPasswordSegue") {
         
         self.passwordLabel.text = password
         } else if(unwindSegue.identifier == "profileEditDepartmentSegue") {
         self.departmentLabel.text =  ""
         
         }
 */
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare for segue called from ViewControllerProfile")
        if (segue.identifier == "profileEditNameSegue") {
            print("triggering profileEditNameSegue")
            //cast and receive new vc
            let destinationVC = segue.destination as! ViewControllerEditName
            
            //pass the user input to next view controller
                destinationVC.name = self.firstNameLabel.text
            
          
        }
        
        else if (segue.identifier == "profileEditEmailSegue") {
            print("triggering profileEditEmailSegue")
            //cast and receive new vc
            let destinationVC = segue.destination as! ViewControllerEditEmail
            
            //pass the user input to next view controller
            destinationVC.email = self.emailLabel.text
            
        }
        else if (segue.identifier == "profileEditPasswordSegue") {
            print("profileEditPasswordSegue")
            //cast and receive new vc
            let destinationVC = segue.destination as! ViewControllerEditPassword
            
            //pass the user input to next view controller
            destinationVC.password = self.password
          
        }
        else if (segue.identifier == "profileEditDepartmentSegue") {
            print("triggering profileEditDepartmentSegue")
            //cast and receive new vc
            let destinationVC = segue.destination as! ViewControllerEditDepartment
            
            destinationVC.dept = self.department
            destinationVC.deptIndex = self.index

            
            
        }
        
   
    }//end of prepare method
    



}






