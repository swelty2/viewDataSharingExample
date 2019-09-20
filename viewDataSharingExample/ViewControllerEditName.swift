//
//  ViewControllerEdit.swift
//  In class assignment 03
//
//  Created by Sarah on 9/16/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewControllerEditName: UIViewController {

    var name:String?
    
    
    @IBOutlet weak var updateNameText: UITextField!
    
   
    @IBAction func closed(_ sender: UIButton) {
        self.dismiss(animated: true) {
            
        }
        //some code to do next
        print("Close button clicked")
    
    }
    
    
    //step before segue is happening
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare for segue called from Update Name View")
       
            print("triggering unwindToRootViewController From Edit Name Controller")
            //cast and receive new vc
            let destinationVC = segue.destination as! ViewControllerProfile
            //pass the user input to next view controller
            
            destinationVC.firstName = self.updateNameText.text
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateNameText.text = name

        // Do any additional setup after loading the view.
    }
    

}



