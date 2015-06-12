//
//  ViewController.swift
//  Psychologist
//
//  Created by jeff greenberg on 6/12/15.
//  Copyright (c) 2015 Jeff Greenberg. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {
    
    
    @IBAction func feelNothing(sender: UIButton) {
        performSegueWithIdentifier("show nothing state", sender: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "show sad": hvc.happiness = 0
                    case "show happy": hvc.happiness = 100
                    case "show nothing state": hvc.happiness = 25
                default: hvc.happiness = 50
                }
            }
        }
    }
}

