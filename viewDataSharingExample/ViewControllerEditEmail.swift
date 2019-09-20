//
//  ViewControllerEditEmail.swift
//  In class assignment 04
//
//  Created by Sarah on 9/16/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewControllerEditEmail: UIViewController {

    
    var email:String?

    @IBOutlet weak var emailTextArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailTextArea.text = email

        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func updateEmailCancelSelected(_ sender: UIButton) {
        self.dismiss(animated: true) {
            
        }
        //some code to do next
        print("Close button clicked")
    }
    
    //step before segue is happening
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare for segue called from Update Email View")
        
        //cast and receive new vc
        let destinationVC = segue.destination as! ViewControllerProfile
        //pass the user input to next view controller
        
        destinationVC.emailString = self.emailTextArea.text
        
    }

}
