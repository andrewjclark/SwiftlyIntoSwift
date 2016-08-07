//
//  NewPersonViewController.swift
//  SwiftlyIntoSwift2
//
//  Created by Andrew J Clark on 7/08/2016.
//  Copyright © 2016 Very Tiny Machines. All rights reserved.
//

import UIKit

protocol NewPersonViewControllerDelegate {
    func newPerson(person: Person)
}

class NewPersonViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var yearField: UITextField!
    
    @IBOutlet weak var genderField: UITextField!
    
    @IBOutlet weak var passportSwitch: UISwitch!
    
    var delegate:NewPersonViewControllerDelegate?
    
    override func viewDidLoad() {
        // Set the title of this view
    }
    
    @IBAction func pressCreatePersonButton(sender: UIButton) {
        // Create the person and pass it back to the delegate
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        
        // Dismiss the keyboard if one is being shown
    }
}
