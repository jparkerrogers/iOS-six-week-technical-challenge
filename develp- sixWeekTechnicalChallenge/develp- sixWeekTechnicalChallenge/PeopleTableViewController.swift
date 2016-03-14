//
//  PeopleTableViewController.swift
//  develp- sixWeekTechnicalChallenge
//
//  Created by Jonathan Rogers on 3/11/16.
//  Copyright © 2016 Jonathan Rogers. All rights reserved.
//

import UIKit
import GameplayKit

class PeopleTableViewController: UITableViewController {
    
    /// make the cells display the completed people
    /// permit the cells to delete people
    ///have the number of cells display the number of people created
    
//    @IBAction func randomizeButtonTapped(sender: AnyObject) {
//        
//        var personArray = Array(PersonController.sharedController.persons.indices)
//        var index = personArray.endIndex
//        
//        var randomizer: AnyGenerator<Int> = anyGenerator {
//            if index == personArray.startIndex { return nil }
//            index = index.advancedBy(-1, limit: personArray.startIndex)
//            let random = Int(arc4random_uniform(UInt32(index)))
//            if random != index {
//                swap(&personArray[random], &personArray[index])
//            }
//        }
//        
//    }
//    
//    let permGenerator = PermutationGenerator(elements: PersonController.sharedController.persons, indices: AnySequence(randomizer))
//    let randomized = Array(permGenerator)
//    
//    var personsLabel = ""
//    for var i = 0 i<randomized.count; i++ {
//    let person = randomized(i)
//    if i == (randomized.count -1)
//    }
//    

    

    ////// this is where you will randomize AND group the people. they will be in groups of two.

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PersonController.sharedController.persons.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tableViewCell", forIndexPath: indexPath)

        let person = PersonController.sharedController.persons[indexPath.row]
        
        cell.textLabel?.text = person.name
        
        cell.detailTextLabel?.text = person.age
        
        return cell
    }
    
    
    
    
    

    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
       
        
        
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            let person = PersonController.sharedController.persons[indexPath.row]
            
            PersonController.sharedController.removePerson(person)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
//    func colorForIndex(index: Int) -> UIColor {
//        
//        UIColor.blueColor()
//        
//        return UIColor()
//
//    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "editExistingPerson" {
            
            if let createPersonViewController = segue.destinationViewController as? CreatePersonViewController {
                
                _ = createPersonViewController.view
                
                let indexPath = tableView.indexPathForSelectedRow
                
                if let selectedRow = indexPath?.row {
                    let person = PersonController.sharedController.persons[selectedRow]
                    createPersonViewController.updateWithPerson(person)
                }
            }
        }
    }
    

}

