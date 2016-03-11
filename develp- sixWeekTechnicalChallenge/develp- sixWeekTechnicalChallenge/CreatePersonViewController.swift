//
//  CreatePersonViewController.swift
//  develp- sixWeekTechnicalChallenge
//
//  Created by Jonathan Rogers on 3/11/16.
//  Copyright © 2016 Jonathan Rogers. All rights reserved.
//

import UIKit

class CreatePersonViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func clearButtonTapped(sender: AnyObject) {
        
        nameTextField.text = ""
        ageTextField.text = ""
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        if let person = self.person {
            person.name = self.nameTextField.text!
            person.age = self.ageTextField.text!
        } else {
            let newPerson = Person(name: self.nameTextField.text!, age: self.ageTextField.text!)
            PersonController.sharedController.addPerson(newPerson)
            self.person = newPerson
        }
        
        self.navigationController?.popViewControllerAnimated(true)
        
        // test this function
    }
    
    func updateWithPerson(person: Person) {
        
        self.person = person
        
        self.nameTextField.text = person.name
        self.ageTextField.text = person.age
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

/// allow text to be saved so that it can be printed on the previous viewController
///
