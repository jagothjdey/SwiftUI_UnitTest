import XCTest
import ViewInspector // 1.
@testable import UnitTest

extension ContentView: Inspectable { } // 2.

final class ContentViewTests: XCTestCase {

    func testStringValue() throws { // 3.
        let sut = ContentView()
        let value = try sut.inspect().vStack().hStack(1).text(0).string()
        XCTAssertEqual(value, "World")
    }
}
