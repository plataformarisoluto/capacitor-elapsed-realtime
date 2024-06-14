import Foundation

@objc public class ElapsedRealtime: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
