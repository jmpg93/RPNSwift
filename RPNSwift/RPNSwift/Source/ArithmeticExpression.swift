//
//  ArithmeticExpression.swift
//  RPNSwift
//
//  Created by Jose Maria Puerta on 26/1/17.
//  Copyright © 2017 Jose Maria Puerta. All rights reserved.
//

import Foundation

indirect enum ArithmeticExpression {
    case number(Int)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
    case division(ArithmeticExpression, ArithmeticExpression)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case subtraction(ArithmeticExpression, ArithmeticExpression)
    
    func evaluate(exp: ArithmeticExpression) -> Int {
        switch exp {
        case let .number(exp):
            return exp
        case let .multiplication(expLeft, expRight):
            return evaluate(exp: expLeft) * evaluate(exp: expRight)
        case let .division(expLeft, expRight):
            return evaluate(exp: expLeft) / evaluate(exp: expRight)
        case let .subtraction(expLeft, expRight):
            return evaluate(exp: expLeft) - evaluate(exp: expRight)
        case let .addition(expLeft, expRight):
            return evaluate(exp: expLeft) + evaluate(exp: expRight)
        }
    }
}
