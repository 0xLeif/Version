struct Version: Equatable, Hashable, Codable {
    var major: Int = 0
    var minor: Int = 0
    var patch: Int = 0
    
    init(_ string: String) {
        let parts = string.split(separator: ".")
        
        if parts.count > 0 {
            major = Int(parts[0]) ?? 0
        }
        
        if parts.count > 1 {
            minor = Int(parts[1]) ?? 0
        }
        
        if parts.count > 2 {
            patch = Int(parts[2]) ?? 0
        }
    }
}
