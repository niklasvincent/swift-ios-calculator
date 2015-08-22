//
//  ViewController.swift
//  Calculator
//
//  Created by Niklas Lindblad on 22/08/2015.
//  Copyright (c) 2015 Niklas Lindblad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    
    var userIsIntheMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle
        if userIsIntheMiddleOfTypingANumber {
            display.text = display.text! + digit!
        } else {
            display.text = digit
            userIsIntheMiddleOfTypingANumber = true
        }
        
    }

}

