//
//  Version+ExpressibleByStringLiteral.swift
//  
//
//  Created by Leif on 5/6/21.
//

extension Version: ExpressibleByStringLiteral {
    public init(stringLiteral: String) {
        self = Version(stringLiteral)
    }
}
