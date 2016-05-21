//
//  ViewController.swift
//  Food Tracker
//
//  Created by Kianush on 5/20/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }

func textFieldDidEndEditing(textField: UITextField){
    mealNameLabel.text = textField.text
    }

    //MARK: actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}
