import XCTest

let parameters = [
    (0, 0, "Love-All"),
    (1, 1, "Fifteen-All"),
    (2, 2, "Thirty-All"),
    (3, 3, "Deuce"),
    (4, 4, "Deuce"),
    
    (1, 0, "Fifteen-Love"),
    (0, 1, "Love-Fifteen"),
    (2, 0, "Thirty-Love"),
    (0, 2, "Love-Thirty"),
    (3, 0, "Forty-Love"),
    (0, 3, "Love-Forty"),
    (4, 0, "Win for player1"),
    (0, 4, "Win for player2"),
    
    (2, 1, "Thirty-Fifteen"),
    (1, 2, "Fifteen-Thirty"),
    (3, 1, "Forty-Fifteen"),
    (1, 3, "Fifteen-Forty"),
    (4, 1, "Win for player1"),
    (1, 4, "Win for player2"),
    
    (3, 2, "Forty-Thirty"),
    (2, 3, "Thirty-Forty"),
    (4, 2, "Win for player1"),
    (2, 4, "Win for player2"),
    
    (4, 3, "Advantage player1"),
    (3, 4, "Advantage player2"),
    (5, 4, "Advantage player1"),
    (4, 5, "Advantage player2"),
    (15, 14, "Advantage player1"),
    (14, 15, "Advantage player2"),
    
    (6, 4, "Win for player1"),
    (4, 6, "Win for player2"),
    (16, 14, "Win for player1"),
    (14, 16, "Win for player2")
]

class TennisTests: XCTestCase {
    var player1Score: Int!
    var player2Score: Int!
    var expectedScore: String!
}

// MARK: Suite
//extension TennisTests {
//    override open class var defaultTestSuite: XCTestSuite {
//        let testSuite = XCTestSuite(name: NSStringFromClass(self))
//        
//        for scores in parameters {
//            addTest(forEachInvocationWith: scores, to: testSuite)
//        }
//        
//        return testSuite
//    }
//    
//    private class func addTest(forEachInvocationWith scores: (Int, Int, String), to testSuite: XCTestSuite) {
//        for testInvocation in testInvocations {
//            let test = TennisTests(invocation: testInvocation)
//            test.player1Score = scores.0
//            test.player2Score = scores.1
//            test.expectedScore = scores.2
//            testSuite.addTest(test)
//        }
//    }
//}

// MARK: Invocations
extension TennisTests {
//////////
    static var allTests = [
        ("testGame1_0_0_LoveAll", testGame1_0_0_LoveAll),
        ("testGame2_0_0_LoveAll", testGame2_0_0_LoveAll),
        ("testGame3_0_0_LoveAll", testGame3_0_0_LoveAll),
        ("testGame1_1_1_FifteenAll", testGame1_1_1_FifteenAll),
        ("testGame2_1_1_FifteenAll", testGame2_1_1_FifteenAll),
        ("testGame3_1_1_FifteenAll", testGame3_1_1_FifteenAll),
        ("testGame1_2_2_ThirtyAll", testGame1_2_2_ThirtyAll),
        ("testGame2_2_2_ThirtyAll", testGame2_2_2_ThirtyAll),
        ("testGame3_2_2_ThirtyAll", testGame3_2_2_ThirtyAll),
        ("testGame1_3_3_Deuce", testGame1_3_3_Deuce),
        ("testGame2_3_3_Deuce", testGame2_3_3_Deuce),
        ("testGame3_3_3_Deuce", testGame3_3_3_Deuce),
        ("testGame1_4_4_Deuce", testGame1_4_4_Deuce),
        ("testGame2_4_4_Deuce", testGame2_4_4_Deuce),
        ("testGame3_4_4_Deuce", testGame3_4_4_Deuce),
        ("testGame1_1_0_FifteenLove", testGame1_1_0_FifteenLove),
        ("testGame2_1_0_FifteenLove", testGame2_1_0_FifteenLove),
        ("testGame3_1_0_FifteenLove", testGame3_1_0_FifteenLove),
        ("testGame1_0_1_LoveFifteen", testGame1_0_1_LoveFifteen),
        ("testGame2_0_1_LoveFifteen", testGame2_0_1_LoveFifteen),
        ("testGame3_0_1_LoveFifteen", testGame3_0_1_LoveFifteen),
        ("testGame1_2_0_ThirtyLove", testGame1_2_0_ThirtyLove),
        ("testGame2_2_0_ThirtyLove", testGame2_2_0_ThirtyLove),
        ("testGame3_2_0_ThirtyLove", testGame3_2_0_ThirtyLove),
        ("testGame1_0_2_LoveThirty", testGame1_0_2_LoveThirty),
        ("testGame2_0_2_LoveThirty", testGame2_0_2_LoveThirty),
        ("testGame3_0_2_LoveThirty", testGame3_0_2_LoveThirty),
        ("testGame1_3_0_FortyLove", testGame1_3_0_FortyLove),
        ("testGame2_3_0_FortyLove", testGame2_3_0_FortyLove),
        ("testGame3_3_0_FortyLove", testGame3_3_0_FortyLove),
        ("testGame1_0_3_LoveForty", testGame1_0_3_LoveForty),
        ("testGame2_0_3_LoveForty", testGame2_0_3_LoveForty),
        ("testGame3_0_3_LoveForty", testGame3_0_3_LoveForty),
        ("testGame1_4_0_Winforplayer1", testGame1_4_0_Winforplayer1),
        ("testGame2_4_0_Winforplayer1", testGame2_4_0_Winforplayer1),
        ("testGame3_4_0_Winforplayer1", testGame3_4_0_Winforplayer1),
        ("testGame1_0_4_Winforplayer2", testGame1_0_4_Winforplayer2),
        ("testGame2_0_4_Winforplayer2", testGame2_0_4_Winforplayer2),
        ("testGame3_0_4_Winforplayer2", testGame3_0_4_Winforplayer2),
        ("testGame1_2_1_ThirtyFifteen", testGame1_2_1_ThirtyFifteen),
        ("testGame2_2_1_ThirtyFifteen", testGame2_2_1_ThirtyFifteen),
        ("testGame3_2_1_ThirtyFifteen", testGame3_2_1_ThirtyFifteen),
        ("testGame1_1_2_FifteenThirty", testGame1_1_2_FifteenThirty),
        ("testGame2_1_2_FifteenThirty", testGame2_1_2_FifteenThirty),
        ("testGame3_1_2_FifteenThirty", testGame3_1_2_FifteenThirty),
        ("testGame1_3_1_FortyFifteen", testGame1_3_1_FortyFifteen),
        ("testGame2_3_1_FortyFifteen", testGame2_3_1_FortyFifteen),
        ("testGame3_3_1_FortyFifteen", testGame3_3_1_FortyFifteen),
        ("testGame1_1_3_FifteenForty", testGame1_1_3_FifteenForty),
        ("testGame2_1_3_FifteenForty", testGame2_1_3_FifteenForty),
        ("testGame3_1_3_FifteenForty", testGame3_1_3_FifteenForty),
        ("testGame1_4_1_Winforplayer1", testGame1_4_1_Winforplayer1),
        ("testGame2_4_1_Winforplayer1", testGame2_4_1_Winforplayer1),
        ("testGame3_4_1_Winforplayer1", testGame3_4_1_Winforplayer1),
        ("testGame1_1_4_Winforplayer2", testGame1_1_4_Winforplayer2),
        ("testGame2_1_4_Winforplayer2", testGame2_1_4_Winforplayer2),
        ("testGame3_1_4_Winforplayer2", testGame3_1_4_Winforplayer2),
        ("testGame1_3_2_FortyThirty", testGame1_3_2_FortyThirty),
        ("testGame2_3_2_FortyThirty", testGame2_3_2_FortyThirty),
        ("testGame3_3_2_FortyThirty", testGame3_3_2_FortyThirty),
        ("testGame1_2_3_ThirtyForty", testGame1_2_3_ThirtyForty),
        ("testGame2_2_3_ThirtyForty", testGame2_2_3_ThirtyForty),
        ("testGame3_2_3_ThirtyForty", testGame3_2_3_ThirtyForty),
        ("testGame1_4_2_Winforplayer1", testGame1_4_2_Winforplayer1),
        ("testGame2_4_2_Winforplayer1", testGame2_4_2_Winforplayer1),
        ("testGame3_4_2_Winforplayer1", testGame3_4_2_Winforplayer1),
        ("testGame1_2_4_Winforplayer2", testGame1_2_4_Winforplayer2),
        ("testGame2_2_4_Winforplayer2", testGame2_2_4_Winforplayer2),
        ("testGame3_2_4_Winforplayer2", testGame3_2_4_Winforplayer2),
        ("testGame1_4_3_Advantageplayer1", testGame1_4_3_Advantageplayer1),
        ("testGame2_4_3_Advantageplayer1", testGame2_4_3_Advantageplayer1),
        ("testGame3_4_3_Advantageplayer1", testGame3_4_3_Advantageplayer1),
        ("testGame1_3_4_Advantageplayer2", testGame1_3_4_Advantageplayer2),
        ("testGame2_3_4_Advantageplayer2", testGame2_3_4_Advantageplayer2),
        ("testGame3_3_4_Advantageplayer2", testGame3_3_4_Advantageplayer2),
        ("testGame1_5_4_Advantageplayer1", testGame1_5_4_Advantageplayer1),
        ("testGame2_5_4_Advantageplayer1", testGame2_5_4_Advantageplayer1),
        ("testGame3_5_4_Advantageplayer1", testGame3_5_4_Advantageplayer1),
        ("testGame1_4_5_Advantageplayer2", testGame1_4_5_Advantageplayer2),
        ("testGame2_4_5_Advantageplayer2", testGame2_4_5_Advantageplayer2),
        ("testGame3_4_5_Advantageplayer2", testGame3_4_5_Advantageplayer2),
        ("testGame1_15_14_Advantageplayer1", testGame1_15_14_Advantageplayer1),
        ("testGame2_15_14_Advantageplayer1", testGame2_15_14_Advantageplayer1),
        ("testGame3_15_14_Advantageplayer1", testGame3_15_14_Advantageplayer1),
        ("testGame1_14_15_Advantageplayer2", testGame1_14_15_Advantageplayer2),
        ("testGame2_14_15_Advantageplayer2", testGame2_14_15_Advantageplayer2),
        ("testGame3_14_15_Advantageplayer2", testGame3_14_15_Advantageplayer2),
        ("testGame1_6_4_Winforplayer1", testGame1_6_4_Winforplayer1),
        ("testGame2_6_4_Winforplayer1", testGame2_6_4_Winforplayer1),
        ("testGame3_6_4_Winforplayer1", testGame3_6_4_Winforplayer1),
        ("testGame1_4_6_Winforplayer2", testGame1_4_6_Winforplayer2),
        ("testGame2_4_6_Winforplayer2", testGame2_4_6_Winforplayer2),
        ("testGame3_4_6_Winforplayer2", testGame3_4_6_Winforplayer2),
        ("testGame1_16_14_Winforplayer1", testGame1_16_14_Winforplayer1),
        ("testGame2_16_14_Winforplayer1", testGame2_16_14_Winforplayer1),
        ("testGame3_16_14_Winforplayer1", testGame3_16_14_Winforplayer1),
        ("testGame1_14_16_Winforplayer2", testGame1_14_16_Winforplayer2),
        ("testGame2_14_16_Winforplayer2", testGame2_14_16_Winforplayer2),
        ("testGame3_14_16_Winforplayer2", testGame3_14_16_Winforplayer2),
    ]
    func testGame1_0_0_LoveAll() {
        player1Score = 0
        player2Score = 0
        expectedScore = "Love-All"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_0_0_LoveAll() {
        player1Score = 0
        player2Score = 0
        expectedScore = "Love-All"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_0_0_LoveAll() {
        player1Score = 0
        player2Score = 0
        expectedScore = "Love-All"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_1_1_FifteenAll() {
        player1Score = 1
        player2Score = 1
        expectedScore = "Fifteen-All"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_1_1_FifteenAll() {
        player1Score = 1
        player2Score = 1
        expectedScore = "Fifteen-All"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_1_1_FifteenAll() {
        player1Score = 1
        player2Score = 1
        expectedScore = "Fifteen-All"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_2_2_ThirtyAll() {
        player1Score = 2
        player2Score = 2
        expectedScore = "Thirty-All"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_2_2_ThirtyAll() {
        player1Score = 2
        player2Score = 2
        expectedScore = "Thirty-All"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_2_2_ThirtyAll() {
        player1Score = 2
        player2Score = 2
        expectedScore = "Thirty-All"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_3_3_Deuce() {
        player1Score = 3
        player2Score = 3
        expectedScore = "Deuce"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_3_3_Deuce() {
        player1Score = 3
        player2Score = 3
        expectedScore = "Deuce"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_3_3_Deuce() {
        player1Score = 3
        player2Score = 3
        expectedScore = "Deuce"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_4_4_Deuce() {
        player1Score = 4
        player2Score = 4
        expectedScore = "Deuce"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_4_4_Deuce() {
        player1Score = 4
        player2Score = 4
        expectedScore = "Deuce"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_4_4_Deuce() {
        player1Score = 4
        player2Score = 4
        expectedScore = "Deuce"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_1_0_FifteenLove() {
        player1Score = 1
        player2Score = 0
        expectedScore = "Fifteen-Love"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_1_0_FifteenLove() {
        player1Score = 1
        player2Score = 0
        expectedScore = "Fifteen-Love"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_1_0_FifteenLove() {
        player1Score = 1
        player2Score = 0
        expectedScore = "Fifteen-Love"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_0_1_LoveFifteen() {
        player1Score = 0
        player2Score = 1
        expectedScore = "Love-Fifteen"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_0_1_LoveFifteen() {
        player1Score = 0
        player2Score = 1
        expectedScore = "Love-Fifteen"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_0_1_LoveFifteen() {
        player1Score = 0
        player2Score = 1
        expectedScore = "Love-Fifteen"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_2_0_ThirtyLove() {
        player1Score = 2
        player2Score = 0
        expectedScore = "Thirty-Love"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_2_0_ThirtyLove() {
        player1Score = 2
        player2Score = 0
        expectedScore = "Thirty-Love"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_2_0_ThirtyLove() {
        player1Score = 2
        player2Score = 0
        expectedScore = "Thirty-Love"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_0_2_LoveThirty() {
        player1Score = 0
        player2Score = 2
        expectedScore = "Love-Thirty"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_0_2_LoveThirty() {
        player1Score = 0
        player2Score = 2
        expectedScore = "Love-Thirty"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_0_2_LoveThirty() {
        player1Score = 0
        player2Score = 2
        expectedScore = "Love-Thirty"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_3_0_FortyLove() {
        player1Score = 3
        player2Score = 0
        expectedScore = "Forty-Love"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_3_0_FortyLove() {
        player1Score = 3
        player2Score = 0
        expectedScore = "Forty-Love"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_3_0_FortyLove() {
        player1Score = 3
        player2Score = 0
        expectedScore = "Forty-Love"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_0_3_LoveForty() {
        player1Score = 0
        player2Score = 3
        expectedScore = "Love-Forty"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_0_3_LoveForty() {
        player1Score = 0
        player2Score = 3
        expectedScore = "Love-Forty"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_0_3_LoveForty() {
        player1Score = 0
        player2Score = 3
        expectedScore = "Love-Forty"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_4_0_Winforplayer1() {
        player1Score = 4
        player2Score = 0
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_4_0_Winforplayer1() {
        player1Score = 4
        player2Score = 0
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_4_0_Winforplayer1() {
        player1Score = 4
        player2Score = 0
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_0_4_Winforplayer2() {
        player1Score = 0
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_0_4_Winforplayer2() {
        player1Score = 0
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_0_4_Winforplayer2() {
        player1Score = 0
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_2_1_ThirtyFifteen() {
        player1Score = 2
        player2Score = 1
        expectedScore = "Thirty-Fifteen"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_2_1_ThirtyFifteen() {
        player1Score = 2
        player2Score = 1
        expectedScore = "Thirty-Fifteen"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_2_1_ThirtyFifteen() {
        player1Score = 2
        player2Score = 1
        expectedScore = "Thirty-Fifteen"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_1_2_FifteenThirty() {
        player1Score = 1
        player2Score = 2
        expectedScore = "Fifteen-Thirty"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_1_2_FifteenThirty() {
        player1Score = 1
        player2Score = 2
        expectedScore = "Fifteen-Thirty"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_1_2_FifteenThirty() {
        player1Score = 1
        player2Score = 2
        expectedScore = "Fifteen-Thirty"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_3_1_FortyFifteen() {
        player1Score = 3
        player2Score = 1
        expectedScore = "Forty-Fifteen"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_3_1_FortyFifteen() {
        player1Score = 3
        player2Score = 1
        expectedScore = "Forty-Fifteen"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_3_1_FortyFifteen() {
        player1Score = 3
        player2Score = 1
        expectedScore = "Forty-Fifteen"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_1_3_FifteenForty() {
        player1Score = 1
        player2Score = 3
        expectedScore = "Fifteen-Forty"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_1_3_FifteenForty() {
        player1Score = 1
        player2Score = 3
        expectedScore = "Fifteen-Forty"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_1_3_FifteenForty() {
        player1Score = 1
        player2Score = 3
        expectedScore = "Fifteen-Forty"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_4_1_Winforplayer1() {
        player1Score = 4
        player2Score = 1
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_4_1_Winforplayer1() {
        player1Score = 4
        player2Score = 1
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_4_1_Winforplayer1() {
        player1Score = 4
        player2Score = 1
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_1_4_Winforplayer2() {
        player1Score = 1
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_1_4_Winforplayer2() {
        player1Score = 1
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_1_4_Winforplayer2() {
        player1Score = 1
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_3_2_FortyThirty() {
        player1Score = 3
        player2Score = 2
        expectedScore = "Forty-Thirty"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_3_2_FortyThirty() {
        player1Score = 3
        player2Score = 2
        expectedScore = "Forty-Thirty"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_3_2_FortyThirty() {
        player1Score = 3
        player2Score = 2
        expectedScore = "Forty-Thirty"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_2_3_ThirtyForty() {
        player1Score = 2
        player2Score = 3
        expectedScore = "Thirty-Forty"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_2_3_ThirtyForty() {
        player1Score = 2
        player2Score = 3
        expectedScore = "Thirty-Forty"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_2_3_ThirtyForty() {
        player1Score = 2
        player2Score = 3
        expectedScore = "Thirty-Forty"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_4_2_Winforplayer1() {
        player1Score = 4
        player2Score = 2
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_4_2_Winforplayer1() {
        player1Score = 4
        player2Score = 2
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_4_2_Winforplayer1() {
        player1Score = 4
        player2Score = 2
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_2_4_Winforplayer2() {
        player1Score = 2
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_2_4_Winforplayer2() {
        player1Score = 2
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_2_4_Winforplayer2() {
        player1Score = 2
        player2Score = 4
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_4_3_Advantageplayer1() {
        player1Score = 4
        player2Score = 3
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_4_3_Advantageplayer1() {
        player1Score = 4
        player2Score = 3
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_4_3_Advantageplayer1() {
        player1Score = 4
        player2Score = 3
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_3_4_Advantageplayer2() {
        player1Score = 3
        player2Score = 4
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_3_4_Advantageplayer2() {
        player1Score = 3
        player2Score = 4
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_3_4_Advantageplayer2() {
        player1Score = 3
        player2Score = 4
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_5_4_Advantageplayer1() {
        player1Score = 5
        player2Score = 4
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_5_4_Advantageplayer1() {
        player1Score = 5
        player2Score = 4
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_5_4_Advantageplayer1() {
        player1Score = 5
        player2Score = 4
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_4_5_Advantageplayer2() {
        player1Score = 4
        player2Score = 5
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_4_5_Advantageplayer2() {
        player1Score = 4
        player2Score = 5
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_4_5_Advantageplayer2() {
        player1Score = 4
        player2Score = 5
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_15_14_Advantageplayer1() {
        player1Score = 15
        player2Score = 14
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_15_14_Advantageplayer1() {
        player1Score = 15
        player2Score = 14
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_15_14_Advantageplayer1() {
        player1Score = 15
        player2Score = 14
        expectedScore = "Advantage player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_14_15_Advantageplayer2() {
        player1Score = 14
        player2Score = 15
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_14_15_Advantageplayer2() {
        player1Score = 14
        player2Score = 15
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_14_15_Advantageplayer2() {
        player1Score = 14
        player2Score = 15
        expectedScore = "Advantage player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_6_4_Winforplayer1() {
        player1Score = 6
        player2Score = 4
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_6_4_Winforplayer1() {
        player1Score = 6
        player2Score = 4
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_6_4_Winforplayer1() {
        player1Score = 6
        player2Score = 4
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_4_6_Winforplayer2() {
        player1Score = 4
        player2Score = 6
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_4_6_Winforplayer2() {
        player1Score = 4
        player2Score = 6
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_4_6_Winforplayer2() {
        player1Score = 4
        player2Score = 6
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_16_14_Winforplayer1() {
        player1Score = 16
        player2Score = 14
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_16_14_Winforplayer1() {
        player1Score = 16
        player2Score = 14
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_16_14_Winforplayer1() {
        player1Score = 16
        player2Score = 14
        expectedScore = "Win for player1"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
    func testGame1_14_16_Winforplayer2() {
        player1Score = 14
        player2Score = 16
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame1.self)
    }
    func testGame2_14_16_Winforplayer2() {
        player1Score = 14
        player2Score = 16
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame2.self)
    }
    func testGame3_14_16_Winforplayer2() {
        player1Score = 14
        player2Score = 16
        expectedScore = "Win for player2"
        instantiateAndCheckGame(class: TennisGame3.self)
    }
//////////
    private func instantiateAndCheckGame(class aClass: TennisGame.Type) {
        let game = instantiateGame(class: aClass)
        checkAllScores(for: game)
    }
    
    private func instantiateGame(class aClass: TennisGame.Type) -> TennisGame {
        let instance = aClass.init(player1: "player1", player2: "player2")
        return instance
    }
    
    private func checkAllScores(for game: TennisGame) {
        print("\(player1Score!), \(player2Score!), \(expectedScore!)")
        let highestScore = max(player1Score, player2Score);
        for i in 0..<highestScore {
            if i < player1Score {
                game.wonPoint("player1")
            }
            if i < player2Score {
                game.wonPoint("player2")
            }
        }
        XCTAssertEqual(game.score, expectedScore)
    }
}