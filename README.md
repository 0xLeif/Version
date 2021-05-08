# Version

*Simple semvar and emojvar Version*

```swift
let version: Version = "0.1.2"
            
XCTAssertEqual(version.emojvar, "⭕️.🦺.🐛")

XCTAssertEqual(version.major, 0)
XCTAssertEqual(version.minor, 1)
XCTAssertEqual(version.patch, 2)
```
