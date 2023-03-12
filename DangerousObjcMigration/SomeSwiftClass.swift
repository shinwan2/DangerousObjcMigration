import Foundation

@objc
public final class SomeSwiftClass: NSObject {
    @objc
    public static func processNonNull(text: String, number: NSNumber, complex: ComplexObject) -> String {
        "\(text);\(String(describing: number)):\(number.stringValue);\(String(describing: complex)):\(String(complex.number))"
    }
    
    func convertTimeInterval(_ timeInterval: TimeInterval) -> NSNumber {
        NSNumber(value: (UInt)(timeInterval * 1000))
    }
}
