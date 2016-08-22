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
    //默认private，需要时再将其public
    private var accumulator = 0.0 //默认初始值为0
    //pending（悬而未决的）当前在计算器brain中还没有执行完毕的数和操作符，所以optional
    private var pending:PendingBinaryOperation?
    //result 返回accumulator中的结果
    
    //
    var result: Double
    {
        get
        {
            return accumulator
        }
    }
    //操作符号字典序，通过符号（string）查对应操作方法（枚举中自定义的几种操作方法）
    //swift自动推测⭐️
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
    //自定义操作方法，0常数1单操作数2双操作数3判断是否相等
    private enum Operation
    {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinryOperation((Double,Double) -> Double)
        case Equals
    }
    //operant操作数，设置accumulator为制定操作数
    func setOperant(operand: Double)
    {
        accumulator = operand
    }
    //accumulator进行更新（计算得结果）
    func performOperation(symbol: String)
    {
        if let operation = operations[symbol]//symbol为String，字典查询得到operation(Operation类型)switch时候会自动推测，.会自动推测，对应计算
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
    //为了方便提取出的执行双操作数计算，如果缓存不空，就要计算，否则啥也不做
    private func executePendingBinaryOperation()
    {
        if pending != nil
        {
            accumulator = pending!.binaryFunction(pending!.firstOperand, accumulator)
            pending = nil
        }
    }
    //双操作数结构体包含双操作数符号和第一个操作数，为pending的自定义结构体
    struct PendingBinaryOperation {
        var binaryFunction :(Double,Double) -> Double
        var firstOperand:Double
    }
    
}