//
//  Evaluator.swift
//  RPNSwift
//
//  Created by Jose Maria Puerta on 26/1/17.
//  Copyright © 2017 Jose Maria Puerta. All rights reserved.
//

import Foundation

public enum Token {
    public init(string: String) {
        switch string {
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            self = .number(Int(string)!)
        case "+":
            self = .plus
        case "-":
            self = .minus
        case "*":
            self = .multiplication
        case "/":
            self = .division
        default:
            self = .none
        }
    }

    case multiplication
    case division
    case plus
    case minus
    case none
    case number(Int)
    
    public func evaluate(left: Int, right: Int) -> Int {
        switch self {
        case .multiplication:
            return left * right
        case .division:
             return left / right
        case .plus:
            return left + right
        case .minus:
             return left - right
        case .none:
            return 0
        case .number:
            fatalError()
        }
    }
}
