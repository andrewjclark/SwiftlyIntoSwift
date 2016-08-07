//
//  PeopleIndexViewController.swift
//  SwiftlyIntoSwift2
//
//  Created by Andrew J Clark on 26/07/2016.
//  Copyright © 2016 Very Tiny Machines. All rights reserved.
//

import UIKit

class PeopleIndexViewController: UITableViewController, NewPersonViewControllerDelegate {
    
    // people is an array that contains Person objects
    var people = [Person]()
    
    override func viewDidLoad() {
        
        // Let's setup some people.
        
        people.append(Person(name: "AJC", year: 1987, gender: "M", hasPassport: true))
        people.append(Person(name: "Fico", year: 1989, gender: "M", hasPassport: true))
        people.append(Person(name: "Liesbeth", year: 1985, gender: "F", hasPassport: true))
        people.append(Person(name: "Brian", year: 1990, gender: "M", hasPassport: true))
        
        // Add a UIBarButton item to this view's navigation item (so it appears in the top section)
    }
    
    func userPressedNewPersonButton() {
        // Present the NewPersonViewController and set "self" as the delegate.
    }
    
    func newPerson(person: Person) {
        // This view has received a person. Append people and reload
    }
    
    // These functions are provided by the UITableViewController class that our PeopleIndexViewController is *subclassing* from. We override them and return our own values and this allows us to control the table view cells.
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // We want to have only 1 section here.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // We want our 1 section to contain that same number of cells as we have Person's in our people array.
        return people.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        // Let's make all of the cells the same height - 100 points (pixels).
        return 100
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // This method is called whenever the tableview needs to create a new cell. This happens when the view first appears, and then as we scroll up and down and cells's enter/leave the view.
        
        // We create a cell, forcing it to be of type UITableViewCell with "as UITableViewCell!". The reason for this is dequeueing a cell could result in another type of cell, or a null value, but this forces it to exist so that we can work with it. If this line did not result in a useable cell during runtime it will crash, but that's ok for now.
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        
        // Now, let's get the person from our people array that is relevant to this particular indexPath. Remember that the number of cells in this table is controlled in the above numberOfRowsInSection function, which return the people's arrays "count" property. If there are 5 people there should be 5 cells, and we can get the matching person with this line:
        let thisPerson = people[indexPath.row]
        
        // We have our person, let's change the textLabel inside this cell to have a text property that is a string containing some of thisPerson's properties.
        cell.textLabel?.text = "\(thisPerson.name) \(thisPerson.year)"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        // This method is called whenever a user selects a row from the tableview.
        
        // First we'll get the relevant person from our people array.
        
        let thisPerson = people[indexPath.row]
        
        // Now we need to get the PersonViewController from our storyboard. The following line instantiates the UIStoryboard, and then asks that storyboard for a view controller that is named "PersonViewController". We named that view "PersonViewController" in the Storyboard by setting it's Storyboard ID in the identity inspector.
        
        let newViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("PersonViewController") as! PersonViewController // By ending with "as! PersonViewController" we are telling the compiler what type of view we are expecting, because this method could return null or another view controller.
        
        
        // We can now set newViewController's currentPerson property to this person.
        newViewController.currentPerson = thisPerson
        
        // We call presentViewController and push it on this view's navigation controller
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    
    
    
    
    
    
}
