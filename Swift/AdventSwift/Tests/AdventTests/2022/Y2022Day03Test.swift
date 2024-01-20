// Created on 1/11/23.

import XCTest
@testable import Advent

final class Y2022Day03Test: XCTestCase {

  func testPart1_Example() throws {
    let day = Y2022Day03()
    let lines = day.readData(from: day.exampleFilename())
    XCTAssertEqual(day.part1(lines), "157")
  }

  func testPart1_Full() throws {
    let day = Y2022Day03()
    let lines = day.readData(from: day.fullDataFilename())
    XCTAssertEqual(day.part1(lines), "8298")
  }

  func testPart2_Example() throws {
    let day = Y2022Day03()
    let lines = day.readData(from: day.exampleFilename())
    XCTAssertEqual(day.part2(lines), "70")
  }

  func testPart2_Full() throws {
    let day = Y2022Day03()
    let lines = day.readData(from: day.fullDataFilename())
    XCTAssertEqual(day.part2(lines), "2708")
  }
  
}
