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
    
    
    @IBAction func clearButtonTapped(sender: AnyObject) {
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
