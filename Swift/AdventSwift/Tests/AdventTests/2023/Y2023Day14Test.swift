// Created on 12/21/2023.

import XCTest
@testable import Advent

final class Y2023Day14Test: XCTestCase {
  private typealias DayType = Y2023Day14

  func testPart1_Example() throws {
    let day = DayType()
    let lines = day.readData(from: day.exampleFilename())
    XCTAssertEqual(day.part1(lines), "136")
  }

  func testPart1_Full() throws {
    let day = DayType()
    let lines = day.readData(from: day.fullDataFilename())
    XCTAssertEqual(day.part1(lines), "110821")
  }

  func testPart2_Example() throws {
    let day = DayType()
    let lines = day.readData(from: day.exampleFilename())
    XCTAssertEqual(day.part2(lines), "64")
  }

  func testPart2_Full() throws {
    let day = DayType()
    let lines = day.readData(from: day.fullDataFilename())
    XCTAssertEqual(day.part2(lines), "83516")
  }
}
