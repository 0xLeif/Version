//
//  Version+EmojVar.swift
//  
//
//  Created by Leif on 5/6/21.
//

public extension Version {
    var emojvar: String {
        [
            "\(major)".emojvar(type: .major),
            "\(minor)".emojvar(type: .minor),
            "\(patch)".emojvar(type: .patch)
        ]
        .joined(separator: ".")
    }
}

public enum EmojVarType {
    case major
    case minor
    case patch
}

public extension EmojVarType {
    var emojis: [Character: String] {
        zip(
            "0123456789",
            { () -> String in
                switch self {
                case .major:
                    return "⭕️🔴🟠🟡🟢🔵🟣🟤⚫️⚪️"
                case .minor:
                    return "🥼🦺👔👕👖🧣🧤🧥🧦👗"
                case .patch:
                    return "🐌🦋🐛🐜🐝🐞🦗🕷🦂🦟"
                }
            }()
        )
        .reduce(into: [Character: String]()) { dict, pair in
            dict[pair.0] = pair.1.description
        }
    }
}

public extension String {
    func emojvar(type: EmojVarType) -> String {
        compactMap {
            type.emojis[$0]
        }
        .joined()
    }
}
