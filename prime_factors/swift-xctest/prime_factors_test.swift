import XCTest

class PrimeFactorsTest: XCTestCase {

  func factor_2() {
    let factor = PrimeFactors()
    XCTAssertEqual([2], factor.factor(number: 2))
  }
}

extension PrimeFactorsTest {
  static var allTests : [(String, (PrimeFactorsTest) -> () throws -> Void)] {
    let name = "factor_2"
    let fun = factor_2
    return [ (name, fun), ]
  }
}

