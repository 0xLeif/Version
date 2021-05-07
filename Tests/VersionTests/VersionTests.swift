    import XCTest
    @testable import Version

    final class VersionTests: XCTestCase {
        func testVersion() {
            let version: Version = "0.1.2"
            
            XCTAssertEqual(version.emojvar, "⭕️.🦺.🐛")
            
            XCTAssertEqual(version.major, 0)
            XCTAssertEqual(version.minor, 1)
            XCTAssertEqual(version.patch, 2)
        }
        
        func testVersionCompare() {
            let lower: Version = "0.0.1"
            let higher: Version = "0.1.0"
            
            XCTAssert(lower < higher)
        }
    }
