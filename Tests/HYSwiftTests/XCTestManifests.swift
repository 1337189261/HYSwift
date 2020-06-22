import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(HYColorTests.allTests),
        testCase(HYSwiftNetworkingTests.allTests)
    ]
}
#endif
