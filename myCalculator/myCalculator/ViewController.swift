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
    //userIsInTheMiddleOfTyping用户是否正在输入的bool变量
    private var userIsInTheMiddleOfTyping = false
    private var userInputDot = false
    //计算器上面显示的变量，显示是string变量，所以要在double和string间转换
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
    //brain实例
    private var brain = CalculatorBrain()
    
    @IBOutlet private weak var display: UILabel!
    
    //数字，包括小数点
    @IBAction private func touchDigit(sender: UIButton)
    {
        //my way to allow legal floating numbers is create a bool named:userInputDot
        var digit = sender.currentTitle!
        if digit == "."
        {
            if userInputDot //if input a dot
            {
                digit = " "
                userIsInTheMiddleOfTyping = false
                userInputDot = false
            }
            else
            {
                userInputDot = true
            }
        }
    
        if userIsInTheMiddleOfTyping//如果正在输入会继续添加数字
        {
            let textCurrentInDisplay = display!.text!
            display.text = textCurrentInDisplay + digit
        }
        else//否则的话就会重置为第一个输入的数
        {
            display.text = digit
        }
        //最终的状态都要记得变为正在输入了
        userIsInTheMiddleOfTyping = true
    }
    @IBAction private func performOperation(sender: UIButton)
    {
        //如果用户还在输入，按了操作符号，这时候应该将操作数缓存一个
        if userIsInTheMiddleOfTyping
        {
            brain.setOperant(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        //然后计算并且显示结果，刷新一次
        if let mathmaticalSymbol = sender.currentTitle
        {
            brain.performOperation(mathmaticalSymbol)
        }
        displayValue = brain.result
    }

}
