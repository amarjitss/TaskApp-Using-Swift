//
//  SecondViewController.swift
//  Simple Task App
//
//  Created by amarjit singh on 4/12/16.
//  Copyright © 2016 amarjit singh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtName: UITextField!
   
    @IBOutlet weak var txtDesc: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Events
    @IBAction func btnAddTask_clicked(sender: UIButton)
    {
        taskMgr.addTask(txtName.text!, description: txtDesc.text!)
        self.view.endEditing(true);
        txtDesc.text = ""
        txtName.text = ""
        self.tabBarController!.selectedIndex = 0;
    }
    
    //MARK: iOS Touch Functions
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    //uitextfield delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
        // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder();
        return true
    }



}

