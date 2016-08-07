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
    
    var currentPerson = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        myLabel.backgroundColor = UIColor.whiteColor()
        myLabel.textColor = UIColor.blackColor()
        myLabel.textAlignment = NSTextAlignment.Center
        
        // We call updateView here. "currentPerson" might have been set by another view, or it might just be a default Person object. Either way let's update the user interface.
        updateView()
    }
    
    func updateView() {
        // Update view for the currentPerson property.
        self.navigationItem.title = "Person View"
        
        var labelText = "Name is \(currentPerson.name)\nBirth year is: \(currentPerson.year)\nApproximate age is: \(2016 - currentPerson.year)\nGender is: \(currentPerson.gender)"
        
        if currentPerson.hasPassport {
            labelText += "\nHas passport"
        } else {
            labelText += "\nNo passport"
        }
        
        if currentPerson.isAdult(2017) {
            labelText += "\nAdult"
        } else {
            labelText += "\nNot an Adult"
        }
        
        myLabel.text = labelText
    }
}

