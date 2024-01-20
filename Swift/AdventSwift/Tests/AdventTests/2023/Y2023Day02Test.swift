// Created on 12/3/23.

import XCTest
@testable import Advent

final class Y2023Day02Test: XCTestCase {

  func testPart1_Example() throws {
    let day = Y2023Day02()
    let lines = day.readData(from: day.exampleFilename())
    XCTAssertEqual(day.part1(lines), "8")
  }

  func testPart1_Full() throws {
    let day = Y2023Day02()
    let lines = day.readData(from: day.fullDataFilename())
    XCTAssertEqual(day.part1(lines), "2239")
  }

  func testPart2_Example() throws {
    let day = Y2023Day02()
    let lines = day.readData(from: day.exampleFilename())
    XCTAssertEqual(day.part2(lines), "2286")
  }

  func testPart2_Full() throws {
    let day = Y2023Day02()
    let lines = day.readData(from: day.fullDataFilename())
    XCTAssertEqual(day.part2(lines), "83435")
  }
}

