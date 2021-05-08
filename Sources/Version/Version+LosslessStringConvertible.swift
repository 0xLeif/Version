//
//  Version+LosslessStringConvertible.swift
//  
//
//  Created by Leif on 5/6/21.
//

extension Version: LosslessStringConvertible {
    public var description: String {
        [major, minor, patch]
            .map(String.init)
            .joined(separator: ".")
    }
}
