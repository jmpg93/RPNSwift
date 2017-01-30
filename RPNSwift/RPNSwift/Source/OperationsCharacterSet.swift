//
//  OperationsCharacterSet.swift
//  RPNSwift
//
//  Created by Jose Maria Puerta on 28/1/17.
//  Copyright © 2017 Jose Maria Puerta. All rights reserved.
//

import Foundation

extension CharacterSet {
    public static var operators: CharacterSet {
        return CharacterSet(charactersIn: "+-*/^")
    }
}
