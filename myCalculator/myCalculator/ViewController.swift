//
//  ViewController.swift
//  myCalculator
//
//  Created by YaoxinZhuo on 8/14/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var userIsInTheMiddleOfTyping = false
    
    @IBOutlet weak var display: UILabel!
    @IBAction func touchDigit(sender: UIButton)
    {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping
        {
            let textCurrentInDisplay = display!.text!
            display.text = textCurrentInDisplay + digit
        }
        else
        {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    @IBAction func performOperation(sender: UIButton)
    {
        
        userIsInTheMiddleOfTyping = false
        if let mathmaticalSymbol = sender.currentTitle
        {
            if mathmaticalSymbol == "π"
            {
                display.text = String(M_PI)
            }
        }
    }

}
