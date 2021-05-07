//
//  Version+Comparable.swift
//  
//
//  Created by Leif on 5/6/21.
//

extension Version: Comparable {
    static func < (lhs: Version, rhs: Version) -> Bool {
        if lhs.major < rhs.major {
            return true
        } else if lhs.major > rhs.major {
            return false
        }
        
        if lhs.minor < rhs.minor {
            return true
        } else if lhs.minor > rhs.minor {
            return false
        }
        
        if lhs.patch < rhs.patch {
            return true
        } else if lhs.patch > rhs.patch {
            return false
        }
        
        return false
    }
}

