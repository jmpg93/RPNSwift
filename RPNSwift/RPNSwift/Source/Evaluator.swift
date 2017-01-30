//
//  Evaluator.swift
//  RPNSwift
//
//  Created by Jose Maria Puerta on 26/1/17.
//  Copyright © 2017 Jose Maria Puerta. All rights reserved.
//

import Foundation

public struct Evaluator {
    
    public init() { }
    
    func transform(string: String) -> [Token] {
        return string
            .components(separatedBy: .whitespacesAndNewlines)
            .joined()
            .characters
            .map({ return String($0) })
            .map(Token.init)
    }
    
    public func evaluate(string: String) {
        var operations: Stack<Token> = Stack()
        
        
        let tokens = transform(string: string).reversed()
        
        for token in tokens {
            
        }
    }
}
