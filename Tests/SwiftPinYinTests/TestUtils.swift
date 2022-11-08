//
// Created by entaoyang@163.com on 2022/9/13.
//

import XCTest
@testable import SwiftPinYin



final class StringTests2: XCTestCase {
    
    func testFind() throws {
        PinYin.preLoad()
        let s = PinYin.findOne(c: "一") ?? "nil"
        print("=>\(s)")
        XCTAssertEqual("1", "1")
    }
}
