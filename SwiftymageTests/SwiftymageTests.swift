//
//  SwiftymageTests.swift
//  SwiftymageTests
//
//  Created by Attila Tóth on 2019. 10. 28..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import XCTest
@testable import Swiftymage

class SwiftymageTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDataFetcherDataResult() {
        DataFetcher.sharedInstance.fetchData(from: "https://cataas.com/cat") { (data: Data?, error) in
            XCTAssertNil(error, "Error was not nil. :(")
            XCTAssertNotNil(data)
            XCTAssertNotNil(UIImage(data: data!))
        }
    }
    
    func testDataFetcherAutoParse() {
        struct TestType: FetchAutoParsable {
            static func parse(from: Data) -> TestType? {
                TestType()
            }
        }
        
        DataFetcher.sharedInstance.fetchData(from: "https://cataas.com/cat") { (data: TestType?, error) in
            XCTAssertNil(error, "Error was not nil. :(")
            XCTAssertNotNil(data!)
        }
    }

//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
