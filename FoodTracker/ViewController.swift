//
//  ViewController.swift
//  FoodTracker
//
//  Created by X. Ding on 12/7/15.
//  Copyright © 2015 X. Ding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self
    }
    
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
        nameTextField.text = ""
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        nameTextField.clearsOnBeginEditing = true
        nameTextField.clearButtonMode = .WhileEditing
    }
    
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Label"
    }

}

