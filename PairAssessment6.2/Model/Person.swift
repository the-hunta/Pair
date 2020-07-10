//
//  Person.swift
//  PairAssessment6.2
//
//  Created by Hunter Smith on 7/10/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

import Foundation

class Person: Codable {
    
    var name: String
    var timestamp: Date
    
    init(name: String, timestamp: Date = Date()) {
        self.name = name
        self.timestamp = timestamp
    }
}

extension Person: Equatable {
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.name == rhs.name && lhs.timestamp == rhs.timestamp
    }
}
