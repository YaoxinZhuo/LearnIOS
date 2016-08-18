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

    private var userIsInTheMiddleOfTyping = false
    private var displayValue:Double
    {
        get
        {
            return Double(display.text!)!
        }
        set
        {
            display.text = String(newValue)
        }
    }
    private var brain = CalculatorBrain()
    
    @IBOutlet private weak var display: UILabel!
    
    
    @IBAction private func touchDigit(sender: UIButton)
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
    @IBAction private func performOperation(sender: UIButton)
    {
        if userIsInTheMiddleOfTyping
        {
            brain.setOperant(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        if let mathmaticalSymbol = sender.currentTitle
        {
            brain.performOperation(mathmaticalSymbol)
        }
        displayValue = brain.result
    }

}
