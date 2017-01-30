//
//  Stack.swift
//  RPNSwift
//
//  Created by Jose Maria Puerta on 29/1/17.
//  Copyright © 2017 Jose Maria Puerta. All rights reserved.
//

import Foundation

public struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    public init() { }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: Element) {
        array.append(element)
    }
    
    public mutating func pop() -> Element? {
        return array.popLast()
    }
    
    public func peek() -> Element? {
        return array.last
    }
}
