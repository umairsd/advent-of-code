// Created on 12/3/23.

import XCTest

final class Y2023Day02Test: XCTestCase {

  func testPart1_Example() throws {
    let day = Y2023Day02(dataFileNumber: 1)
    let lines = TestUtils().loadTestData(from: day.dataFilename())
    XCTAssertEqual(day.part1(lines), "")
  }

  func testPart1_Full() throws {
    let day = Y2023Day02(dataFileNumber: 2)
    let lines = TestUtils().loadTestData(from: day.dataFilename())
    XCTAssertEqual(day.part1(lines), "")
  }

  func testPart2_Example() throws {
    let day = Y2023Day02(dataFileNumber: 1)
    let lines = TestUtils().loadTestData(from: day.dataFilename())
    XCTAssertEqual(day.part2(lines), "")
  }

  func testPart2_Full() throws {
    let day = Y2023Day02(dataFileNumber: 2)
    let lines = TestUtils().loadTestData(from: day.dataFilename())
    XCTAssertEqual(day.part2(lines), "")
  }
}

