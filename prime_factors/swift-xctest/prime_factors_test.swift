import XCTest

class PrimeFactorsTest: XCTestCase {

  func factor_2() {
    let factor = PrimeFactors()
    XCTAssertEqual([2], factor.factor(number: 2))
  }
}

extension PrimeFactorsTest {
  static var allTests : [(String, (PrimeFactorsTest) -> () throws -> Void)] {
    return [ 
      ("factor_2", factor_2), 
    ]
  }
}

