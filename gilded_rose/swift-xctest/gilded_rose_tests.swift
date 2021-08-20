import XCTest

class GildedRoseTests: XCTestCase {
  func foo() {
    let items = [ Item(name: "fixme", sellIn: 0, quality: 0) ];
    let app = GildedRose(items: items);
    app.updateQuality();
    XCTAssertEqual("fixme", app.items[0].name);
  }
}

extension GildedRoseTests {
  static var allTests : [(String, (GildedRoseTests) -> () throws -> Void)] {
    return [ 
        ("foo", foo),
     ]
  }
}
