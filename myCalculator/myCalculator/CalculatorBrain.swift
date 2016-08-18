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
    private var pending:PendingBinaryOperation?
    var result: Double
    {
        get
        {
            return accumulator
        }
    }
    private var operations:Dictionary<String,Operation> =
    [
        "π": Operation.Constant(M_PI),
        "e": Operation.Constant(M_E),
        "±": Operation.UnaryOperation({ -$0 }),
        "√": Operation.UnaryOperation(sqrt),
        "cos": Operation.UnaryOperation(cos),
        "×": Operation.BinryOperation({$0 * $1}),
        "−": Operation.BinryOperation({$0 - $1}),
        "+": Operation.BinryOperation({$0 + $1}),
        "÷": Operation.BinryOperation({$0 / $1}),
        "=": Operation.Equals
    ]
    private enum Operation
    {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinryOperation((Double,Double) -> Double)
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
            case .Constant(let value):
                accumulator = value
            case .UnaryOperation(let function):
                accumulator = function(accumulator)
            case .BinryOperation(let function):
                executePendingBinaryOperation()
                pending = PendingBinaryOperation(binaryFunction: function, firstOperand: accumulator)
            case .Equals:
                executePendingBinaryOperation()
            }
        }
    }
    
    private func executePendingBinaryOperation()
    {
        if pending != nil
        {
            accumulator = pending!.binaryFunction(pending!.firstOperand, accumulator)
            pending = nil
        }
    }
    
    struct PendingBinaryOperation {
        var binaryFunction :(Double,Double) -> Double
        var firstOperand:Double
    }
    
}