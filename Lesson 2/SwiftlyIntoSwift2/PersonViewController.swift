//
//  ViewController.swift
//  SwiftlyIntoSwift2
//
//  Created by Andrew J Clark on 26/07/2016.
//  Copyright © 2016 Very Tiny Machines. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    var currentPerson = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        myLabel.backgroundColor = UIColor.whiteColor()
        myLabel.textColor = UIColor.redColor()
        myLabel.textAlignment = NSTextAlignment.Center
        
        myButton.backgroundColor = UIColor.greenColor()
        
        // We call updateView here. "currentPerson" might have been set by another view, or it might just be a default Person object. Either way let's update the user interface.
        updateView()
    }
    
    func updateView() {
        // Update view for the currentPerson property.
        
        myLabel.text = "Name is \(currentPerson.name)\nYear is \(currentPerson.year)\nGender is: \(currentPerson.gender)"
    }
    
    
    @IBAction func userPressedButton(sender: UIButton) {
        // The user pressed the "Update Button" so let's replace the currentPerson with a new "Liesbeth" person.
        
        currentPerson = Person(name: "Liesbeth", year: 1985, gender: "F", hasPassport: true)
        
        updateView()
    }
    
    
    @IBAction func userPressedDismiss(sender: AnyObject) {
        // The user pressed the Dismiss button, let's call "dismissViewController" which tells the view to disappear and reveal the previous view.
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}

