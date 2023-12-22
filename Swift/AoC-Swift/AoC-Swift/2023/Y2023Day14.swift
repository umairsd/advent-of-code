// Created on 12/21/23.

import Foundation

class Y2023Day14: Day {
  var dayNumber: Int = 14
  var year: Int = 2023
  var dataFileNumber: Int

  required init(dataFileNumber: Int) {
    self.dataFileNumber = dataFileNumber
  }

  
  func part1(_ lines: [String]) -> String {
    let platform = parsePlatform(lines)
    platform.tiltNorth()
    let result = platform.calculateLoad()
    return "\(result)"
  }


  func part2(_ lines: [String]) -> String {
    return ""
  }
}


fileprivate extension Y2023Day14 {

  func parsePlatform(_ lines: [String]) -> Platform {
    let cells = lines
      .filter { !$0.trimmingCharacters(in: .whitespaces).isEmpty }
      .map {
        Array($0).compactMap { Cell.init(rawValue: $0) }
      }
    return Platform(cells: cells)
  }
}


fileprivate class Platform {
  var cells: [[Cell]]

  init(cells: [[Cell]]) {
    self.cells = cells
  }

  func tiltNorth() {
    // In each column, two pointers. First open space, and first rounded rock.
    // If we encounter a cubedRock, reset.
    for c in 0..<cells[0].count {
      let transposedColumn = transposeColumn(c)
      assert(cells.count == transposedColumn.count)

      // Create sub-sections separated by a `.cubedRock`.
      let splits = Self.splitAroundCubedRock(transposedColumn)
      // For each split, move `.roundedRock`s as far to the left as possible.
      let tiltedSplits = splits.map { slice in
        var result: [Cell] = Array(repeating: .empty, count: slice.count)
        let rockCount = slice.filter { $0 == .roundedRock }.count
        (0..<rockCount).forEach { i in
          result[i] = .roundedRock
        }
        return result
      }

      var joined: [Cell] = []
      joined.append(contentsOf: tiltedSplits.first!)
      tiltedSplits[1...].forEach { row in
        joined.append(.cubedRock)
        joined.append(contentsOf: row)
      }

      assert(transposedColumn.count == joined.count)

      // Undo the transpose.
      for r in 0..<cells.count {
        cells[r][c] = joined[r]
      }
    }
  }


  func calculateLoad() -> Int {
    var score = 0
    for (i, row) in cells.enumerated() {
      let rowScore = row.filter { $0 == .roundedRock }.count * (cells.count - i)
      score += rowScore
    }
    return score
  }

  // MARK: - Private

  private static func splitAroundCubedRock(_ cells: [Cell]) -> [[Cell]] {
    var result: [[Cell]] = []
    var current: [Cell] = []

    for cell in cells {
      if cell == .cubedRock {
        result.append(current)
        current = []
      } else {
        current.append(cell)
      }
    }
    result.append(current)
    return result
  }


  // MARK: - Private

  /// Transpose a column (Top to Bottom) into a row (Left to Right).
  private func transposeColumn(_ column: Int) -> [Cell] {
    var transposedColumn: [Cell] = []
    for r in 0..<cells.count {
      transposedColumn.append(cells[r][column])
    }
    return transposedColumn
  }
}


fileprivate enum Cell: Character {
  case empty = "."
  case roundedRock = "O"
  case cubedRock = "#"
}
