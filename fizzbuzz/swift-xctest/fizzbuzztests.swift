import XCTest

class FizzBuzzTests: XCTestCase {

  func printAll() {
    let fizzbuzz = FizzBuzz()
    for index in 1...100 {
        print("convert\(index)=\( fizzbuzz.convert(number: index) )")
    }
  }
}

extension FizzBuzzTests {
  static var allTests : [(String, (FizzBuzzTests) -> () throws -> Void)] {
    return [ ("printAll", printAll), ]
  }
}

