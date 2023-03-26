@testable import DangerousObjcMigration
import XCTest

final class DangerousObjcMigrationTests: XCTestCase {
    func testConversionToUnsignedLong() {
        let objc = SomeObjcClass()
        XCTAssertEqual(NSNumber(value: 1000), objc.convertTimeInterval(TimeInterval(1)))
        XCTAssertEqual(NSNumber(value: 0), objc.convertTimeInterval(TimeInterval.nan))
        let uint: UInt = 18446744073709551615
        XCTAssertEqual(NSNumber(value: uint), objc.convertTimeInterval(TimeInterval.infinity))
        
        let swift = SomeSwiftClass()
        XCTAssertEqual(NSNumber(value: 1000), swift.convertTimeInterval(TimeInterval(1)))
        // Below produce errors.
        // XCTAssertEqual(NSNumber(value: 0), swift.convertTimeInterval(TimeInterval.nan))
        // XCTAssertEqual(NSNumber(value: uint), swift.convertTimeInterval(TimeInterval.infinity))
    }
    
    func testPassingNilToSwift() {
        let a: NSNumber? = nil
        print("a is \(String(describing: a))\n")
        XCTAssertEqual(";:;:0;[]:0;", SomeObjcClass.passNilToSwift())
        
        // Below code are just copying the SomeObjcClass but this crashes "Unexpectedly found nil".
//        let someObjcClass = SomeObjcClass()
//        XCTAssertEqual(
//            "0",
//            SomeSwiftClass.processNonNull(
//                text: someObjcClass.text,
//                number: someObjcClass.number,
//                complex: someObjcClass.complex
//            )
//        )
    }
}
