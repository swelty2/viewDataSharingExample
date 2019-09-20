//
//  ViewControllerEditDepartment.swift
//  In class assignment 04
//
//  Created by Sarah on 9/16/19.
//  Copyright © 2019 Sarah Welty. All rights reserved.
//

import UIKit

class ViewControllerEditDepartment: UIViewController {
    
    var dept:String?
    
    var deptIndex:Int?
    
    @IBOutlet weak var deptSegment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.deptSegment.selectedSegmentIndex = self.deptIndex!
        //dept = self.deptSegment.titleForSegment(at: self.deptIndex!)
        
            }

 
    
    @IBAction func updateDeptCancelSelected(_ sender: UIButton) {
        self.dismiss(animated: true) {
            
        }
        //some code to do next
        print("Close button clicked")
    }
    
    //step before segue is happening
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare for segue called from Update Department View")
        
        //cast and receive new vc
        let destinationVC = segue.destination as! ViewControllerProfile
        //pass the user input to next view controller
        destinationVC.department = self.deptSegment.titleForSegment(at: deptSegment.selectedSegmentIndex)
    }
    
}
