import XCTest
@testable import HYSwift

final class HYSwiftTests: XCTestCase {
    
    func testColorEqual() {
        let color = UIColor.from(hex: "ff0000")
        XCTAssertEqual(color, UIColor.red)
        let colorWithPrefix = UIColor.from(hex: "#00ff00")
        XCTAssertEqual(colorWithPrefix, UIColor.green)
        let colorWithFalseHex = UIColor.from(hex: "#gg9300")
        XCTAssertNil(colorWithFalseHex)
        let colorWithillegalChar = UIColor.from(hex: "pp29;o")
        XCTAssertNil(colorWithillegalChar)
        let colorWithArbitraryString = UIColor.from(hex: "834h8qg4bg")
        XCTAssertNil(colorWithArbitraryString)
    }

    static var allTests = [
        ("testColorRedEqual", testColorEqual)
    ]
}
