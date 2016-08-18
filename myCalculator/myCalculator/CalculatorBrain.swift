//
//  CalculatorBrain.swift
//  myCalculator
//
//  Created by YaoxinZhuo on 8/16/16.
//  Copyright © 2016 YaoxinZhuo. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    private var accumulator = 0.0
    var result: Double
    {
        get
        {
            return accumulator
        }
    }
    var operations:Dictionary<String,Operation> =
    [
        "π": Operation.Constant(M_PI),
        "e": Operation.Constant(M_E),
        "√": Operation.UnaryOperation(sqrt),
        "cos": Operation.UnaryOperation(cos)
    ]
    enum Operation
    {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinryOperation
        case Equals
    }
    
    //operant操作数，计算数
    func setOperant(operand: Double)
    {
        accumulator = operand
    }
    func performOperation(symbol: String)
    {
        if let operation = operations[symbol]
        {
            switch operation
            {
            case .Constant(let value): accumulator = value
            case .UnaryOperation(let function): accumulator = function(accumulator)
            case .BinryOperation:break
            case .Equals:break
            }
        }
    }
    
}