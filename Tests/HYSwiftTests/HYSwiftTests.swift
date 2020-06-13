import XCTest
@testable import HYSwift

final class HYSwiftTests: XCTestCase {
    
    func testColorRedEqual() {
        let color = HYSwift.colorFrom(hex: "ff0000")
        XCTAssertEqual(color, UIColor.red)
        let color1 = HYSwift.colorFrom(hex: "#00ff00")
        XCTAssertEqual(color1, UIColor.green)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual)
    ]
}
