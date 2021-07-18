import XCTest

class FizzBuzzTests: XCTestCase {

  func testLife_the_universe_and_everything() {
    let fizzbuzz = FizzBuzz()
    for index in 1...100 {
        print("convert\(index)=\( fizzbuzz.convert(number: index) )")
    }
  }
}

extension FizzBuzzTests {
  static var allTests : [(String, (FizzBuzzTests) -> () throws -> Void)] {
    let name = "testLife_the_universe_and_everything"
    let fun = testLife_the_universe_and_everything
    return [ (name, fun), ]
  }
}

