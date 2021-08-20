package tennis;

import io.kotlintest.specs.StringSpec
import io.kotlintest.shouldBe
import io.kotlintest.shouldNotBe

class TennisTest: StringSpec() {

    init {
        "game1 p1:0 p2:0 score:Love-All" {
            checkAllScores(TennisGame1("player1", "player2"), 0, 0, "Love-All");
        }
        "game2 p1:0 p2:0 score:Love-All" {
            checkAllScores(TennisGame2("player1", "player2"), 0, 0, "Love-All");
        }
        "game3 p1:0 p2:0 score:Love-All" {
            checkAllScores(TennisGame3("player1", "player2"), 0, 0, "Love-All");
        }
        "game1 p1:1 p2:1 score:Fifteen-All" {
            checkAllScores(TennisGame1("player1", "player2"), 1, 1, "Fifteen-All");
        }
        "game2 p1:1 p2:1 score:Fifteen-All" {
            checkAllScores(TennisGame2("player1", "player2"), 1, 1, "Fifteen-All");
        }
        "game3 p1:1 p2:1 score:Fifteen-All" {
            checkAllScores(TennisGame3("player1", "player2"), 1, 1, "Fifteen-All");
        }
        "game1 p1:2 p2:2 score:Thirty-All" {
            checkAllScores(TennisGame1("player1", "player2"), 2, 2, "Thirty-All");
        }
        "game2 p1:2 p2:2 score:Thirty-All" {
            checkAllScores(TennisGame2("player1", "player2"), 2, 2, "Thirty-All");
        }
        "game3 p1:2 p2:2 score:Thirty-All" {
            checkAllScores(TennisGame3("player1", "player2"), 2, 2, "Thirty-All");
        }
        "game1 p1:3 p2:3 score:Deuce" {
            checkAllScores(TennisGame1("player1", "player2"), 3, 3, "Deuce");
        }
        "game2 p1:3 p2:3 score:Deuce" {
            checkAllScores(TennisGame2("player1", "player2"), 3, 3, "Deuce");
        }
        "game3 p1:3 p2:3 score:Deuce" {
            checkAllScores(TennisGame3("player1", "player2"), 3, 3, "Deuce");
        }
        "game1 p1:4 p2:4 score:Deuce" {
            checkAllScores(TennisGame1("player1", "player2"), 4, 4, "Deuce");
        }
        "game2 p1:4 p2:4 score:Deuce" {
            checkAllScores(TennisGame2("player1", "player2"), 4, 4, "Deuce");
        }
        "game3 p1:4 p2:4 score:Deuce" {
            checkAllScores(TennisGame3("player1", "player2"), 4, 4, "Deuce");
        }
        "game1 p1:1 p2:0 score:Fifteen-Love" {
            checkAllScores(TennisGame1("player1", "player2"), 1, 0, "Fifteen-Love");
        }
        "game2 p1:1 p2:0 score:Fifteen-Love" {
            checkAllScores(TennisGame2("player1", "player2"), 1, 0, "Fifteen-Love");
        }
        "game3 p1:1 p2:0 score:Fifteen-Love" {
            checkAllScores(TennisGame3("player1", "player2"), 1, 0, "Fifteen-Love");
        }
        "game1 p1:0 p2:1 score:Love-Fifteen" {
            checkAllScores(TennisGame1("player1", "player2"), 0, 1, "Love-Fifteen");
        }
        "game2 p1:0 p2:1 score:Love-Fifteen" {
            checkAllScores(TennisGame2("player1", "player2"), 0, 1, "Love-Fifteen");
        }
        "game3 p1:0 p2:1 score:Love-Fifteen" {
            checkAllScores(TennisGame3("player1", "player2"), 0, 1, "Love-Fifteen");
        }
        "game1 p1:2 p2:0 score:Thirty-Love" {
            checkAllScores(TennisGame1("player1", "player2"), 2, 0, "Thirty-Love");
        }
        "game2 p1:2 p2:0 score:Thirty-Love" {
            checkAllScores(TennisGame2("player1", "player2"), 2, 0, "Thirty-Love");
        }
        "game3 p1:2 p2:0 score:Thirty-Love" {
            checkAllScores(TennisGame3("player1", "player2"), 2, 0, "Thirty-Love");
        }
        "game1 p1:0 p2:2 score:Love-Thirty" {
            checkAllScores(TennisGame1("player1", "player2"), 0, 2, "Love-Thirty");
        }
        "game2 p1:0 p2:2 score:Love-Thirty" {
            checkAllScores(TennisGame2("player1", "player2"), 0, 2, "Love-Thirty");
        }
        "game3 p1:0 p2:2 score:Love-Thirty" {
            checkAllScores(TennisGame3("player1", "player2"), 0, 2, "Love-Thirty");
        }
        "game1 p1:3 p2:0 score:Forty-Love" {
            checkAllScores(TennisGame1("player1", "player2"), 3, 0, "Forty-Love");
        }
        "game2 p1:3 p2:0 score:Forty-Love" {
            checkAllScores(TennisGame2("player1", "player2"), 3, 0, "Forty-Love");
        }
        "game3 p1:3 p2:0 score:Forty-Love" {
            checkAllScores(TennisGame3("player1", "player2"), 3, 0, "Forty-Love");
        }
        "game1 p1:0 p2:3 score:Love-Forty" {
            checkAllScores(TennisGame1("player1", "player2"), 0, 3, "Love-Forty");
        }
        "game2 p1:0 p2:3 score:Love-Forty" {
            checkAllScores(TennisGame2("player1", "player2"), 0, 3, "Love-Forty");
        }
        "game3 p1:0 p2:3 score:Love-Forty" {
            checkAllScores(TennisGame3("player1", "player2"), 0, 3, "Love-Forty");
        }
        "game1 p1:4 p2:0 score:Win for player1" {
            checkAllScores(TennisGame1("player1", "player2"), 4, 0, "Win for player1");
        }
        "game2 p1:4 p2:0 score:Win for player1" {
            checkAllScores(TennisGame2("player1", "player2"), 4, 0, "Win for player1");
        }
        "game3 p1:4 p2:0 score:Win for player1" {
            checkAllScores(TennisGame3("player1", "player2"), 4, 0, "Win for player1");
        }
        "game1 p1:0 p2:4 score:Win for player2" {
            checkAllScores(TennisGame1("player1", "player2"), 0, 4, "Win for player2");
        }
        "game2 p1:0 p2:4 score:Win for player2" {
            checkAllScores(TennisGame2("player1", "player2"), 0, 4, "Win for player2");
        }
        "game3 p1:0 p2:4 score:Win for player2" {
            checkAllScores(TennisGame3("player1", "player2"), 0, 4, "Win for player2");
        }
        "game1 p1:2 p2:1 score:Thirty-Fifteen" {
            checkAllScores(TennisGame1("player1", "player2"), 2, 1, "Thirty-Fifteen");
        }
        "game2 p1:2 p2:1 score:Thirty-Fifteen" {
            checkAllScores(TennisGame2("player1", "player2"), 2, 1, "Thirty-Fifteen");
        }
        "game3 p1:2 p2:1 score:Thirty-Fifteen" {
            checkAllScores(TennisGame3("player1", "player2"), 2, 1, "Thirty-Fifteen");
        }
        "game1 p1:1 p2:2 score:Fifteen-Thirty" {
            checkAllScores(TennisGame1("player1", "player2"), 1, 2, "Fifteen-Thirty");
        }
        "game2 p1:1 p2:2 score:Fifteen-Thirty" {
            checkAllScores(TennisGame2("player1", "player2"), 1, 2, "Fifteen-Thirty");
        }
        "game3 p1:1 p2:2 score:Fifteen-Thirty" {
            checkAllScores(TennisGame3("player1", "player2"), 1, 2, "Fifteen-Thirty");
        }
        "game1 p1:3 p2:1 score:Forty-Fifteen" {
            checkAllScores(TennisGame1("player1", "player2"), 3, 1, "Forty-Fifteen");
        }
        "game2 p1:3 p2:1 score:Forty-Fifteen" {
            checkAllScores(TennisGame2("player1", "player2"), 3, 1, "Forty-Fifteen");
        }
        "game3 p1:3 p2:1 score:Forty-Fifteen" {
            checkAllScores(TennisGame3("player1", "player2"), 3, 1, "Forty-Fifteen");
        }
        "game1 p1:1 p2:3 score:Fifteen-Forty" {
            checkAllScores(TennisGame1("player1", "player2"), 1, 3, "Fifteen-Forty");
        }
        "game2 p1:1 p2:3 score:Fifteen-Forty" {
            checkAllScores(TennisGame2("player1", "player2"), 1, 3, "Fifteen-Forty");
        }
        "game3 p1:1 p2:3 score:Fifteen-Forty" {
            checkAllScores(TennisGame3("player1", "player2"), 1, 3, "Fifteen-Forty");
        }
        "game1 p1:4 p2:1 score:Win for player1" {
            checkAllScores(TennisGame1("player1", "player2"), 4, 1, "Win for player1");
        }
        "game2 p1:4 p2:1 score:Win for player1" {
            checkAllScores(TennisGame2("player1", "player2"), 4, 1, "Win for player1");
        }
        "game3 p1:4 p2:1 score:Win for player1" {
            checkAllScores(TennisGame3("player1", "player2"), 4, 1, "Win for player1");
        }
        "game1 p1:1 p2:4 score:Win for player2" {
            checkAllScores(TennisGame1("player1", "player2"), 1, 4, "Win for player2");
        }
        "game2 p1:1 p2:4 score:Win for player2" {
            checkAllScores(TennisGame2("player1", "player2"), 1, 4, "Win for player2");
        }
        "game3 p1:1 p2:4 score:Win for player2" {
            checkAllScores(TennisGame3("player1", "player2"), 1, 4, "Win for player2");
        }
        "game1 p1:3 p2:2 score:Forty-Thirty" {
            checkAllScores(TennisGame1("player1", "player2"), 3, 2, "Forty-Thirty");
        }
        "game2 p1:3 p2:2 score:Forty-Thirty" {
            checkAllScores(TennisGame2("player1", "player2"), 3, 2, "Forty-Thirty");
        }
        "game3 p1:3 p2:2 score:Forty-Thirty" {
            checkAllScores(TennisGame3("player1", "player2"), 3, 2, "Forty-Thirty");
        }
        "game1 p1:2 p2:3 score:Thirty-Forty" {
            checkAllScores(TennisGame1("player1", "player2"), 2, 3, "Thirty-Forty");
        }
        "game2 p1:2 p2:3 score:Thirty-Forty" {
            checkAllScores(TennisGame2("player1", "player2"), 2, 3, "Thirty-Forty");
        }
        "game3 p1:2 p2:3 score:Thirty-Forty" {
            checkAllScores(TennisGame3("player1", "player2"), 2, 3, "Thirty-Forty");
        }
        "game1 p1:4 p2:2 score:Win for player1" {
            checkAllScores(TennisGame1("player1", "player2"), 4, 2, "Win for player1");
        }
        "game2 p1:4 p2:2 score:Win for player1" {
            checkAllScores(TennisGame2("player1", "player2"), 4, 2, "Win for player1");
        }
        "game3 p1:4 p2:2 score:Win for player1" {
            checkAllScores(TennisGame3("player1", "player2"), 4, 2, "Win for player1");
        }
        "game1 p1:2 p2:4 score:Win for player2" {
            checkAllScores(TennisGame1("player1", "player2"), 2, 4, "Win for player2");
        }
        "game2 p1:2 p2:4 score:Win for player2" {
            checkAllScores(TennisGame2("player1", "player2"), 2, 4, "Win for player2");
        }
        "game3 p1:2 p2:4 score:Win for player2" {
            checkAllScores(TennisGame3("player1", "player2"), 2, 4, "Win for player2");
        }
        "game1 p1:4 p2:3 score:Advantage player1" {
            checkAllScores(TennisGame1("player1", "player2"), 4, 3, "Advantage player1");
        }
        "game2 p1:4 p2:3 score:Advantage player1" {
            checkAllScores(TennisGame2("player1", "player2"), 4, 3, "Advantage player1");
        }
        "game3 p1:4 p2:3 score:Advantage player1" {
            checkAllScores(TennisGame3("player1", "player2"), 4, 3, "Advantage player1");
        }
        "game1 p1:3 p2:4 score:Advantage player2" {
            checkAllScores(TennisGame1("player1", "player2"), 3, 4, "Advantage player2");
        }
        "game2 p1:3 p2:4 score:Advantage player2" {
            checkAllScores(TennisGame2("player1", "player2"), 3, 4, "Advantage player2");
        }
        "game3 p1:3 p2:4 score:Advantage player2" {
            checkAllScores(TennisGame3("player1", "player2"), 3, 4, "Advantage player2");
        }
        "game1 p1:5 p2:4 score:Advantage player1" {
            checkAllScores(TennisGame1("player1", "player2"), 5, 4, "Advantage player1");
        }
        "game2 p1:5 p2:4 score:Advantage player1" {
            checkAllScores(TennisGame2("player1", "player2"), 5, 4, "Advantage player1");
        }
        "game3 p1:5 p2:4 score:Advantage player1" {
            checkAllScores(TennisGame3("player1", "player2"), 5, 4, "Advantage player1");
        }
        "game1 p1:4 p2:5 score:Advantage player2" {
            checkAllScores(TennisGame1("player1", "player2"), 4, 5, "Advantage player2");
        }
        "game2 p1:4 p2:5 score:Advantage player2" {
            checkAllScores(TennisGame2("player1", "player2"), 4, 5, "Advantage player2");
        }
        "game3 p1:4 p2:5 score:Advantage player2" {
            checkAllScores(TennisGame3("player1", "player2"), 4, 5, "Advantage player2");
        }
        "game1 p1:15 p2:14 score:Advantage player1" {
            checkAllScores(TennisGame1("player1", "player2"), 15, 14, "Advantage player1");
        }
        "game2 p1:15 p2:14 score:Advantage player1" {
            checkAllScores(TennisGame2("player1", "player2"), 15, 14, "Advantage player1");
        }
        "game3 p1:15 p2:14 score:Advantage player1" {
            checkAllScores(TennisGame3("player1", "player2"), 15, 14, "Advantage player1");
        }
        "game1 p1:14 p2:15 score:Advantage player2" {
            checkAllScores(TennisGame1("player1", "player2"), 14, 15, "Advantage player2");
        }
        "game2 p1:14 p2:15 score:Advantage player2" {
            checkAllScores(TennisGame2("player1", "player2"), 14, 15, "Advantage player2");
        }
        "game3 p1:14 p2:15 score:Advantage player2" {
            checkAllScores(TennisGame3("player1", "player2"), 14, 15, "Advantage player2");
        }
        "game1 p1:6 p2:4 score:Win for player1" {
            checkAllScores(TennisGame1("player1", "player2"), 6, 4, "Win for player1");
        }
        "game2 p1:6 p2:4 score:Win for player1" {
            checkAllScores(TennisGame2("player1", "player2"), 6, 4, "Win for player1");
        }
        "game3 p1:6 p2:4 score:Win for player1" {
            checkAllScores(TennisGame3("player1", "player2"), 6, 4, "Win for player1");
        }
        "game1 p1:4 p2:6 score:Win for player2" {
            checkAllScores(TennisGame1("player1", "player2"), 4, 6, "Win for player2");
        }
        "game2 p1:4 p2:6 score:Win for player2" {
            checkAllScores(TennisGame2("player1", "player2"), 4, 6, "Win for player2");
        }
        "game3 p1:4 p2:6 score:Win for player2" {
            checkAllScores(TennisGame3("player1", "player2"), 4, 6, "Win for player2");
        }
        "game1 p1:16 p2:14 score:Win for player1" {
            checkAllScores(TennisGame1("player1", "player2"), 16, 14, "Win for player1");
        }
        "game2 p1:16 p2:14 score:Win for player1" {
            checkAllScores(TennisGame2("player1", "player2"), 16, 14, "Win for player1");
        }
        "game3 p1:16 p2:14 score:Win for player1" {
            checkAllScores(TennisGame3("player1", "player2"), 16, 14, "Win for player1");
        }
        "game1 p1:14 p2:16 score:Win for player2" {
            checkAllScores(TennisGame1("player1", "player2"), 14, 16, "Win for player2");
        }
        "game2 p1:14 p2:16 score:Win for player2" {
            checkAllScores(TennisGame2("player1", "player2"), 14, 16, "Win for player2");
        }
        "game3 p1:14 p2:16 score:Win for player2" {
            checkAllScores(TennisGame3("player1", "player2"), 14, 16, "Win for player2");
        }
    }
    
    fun checkAllScores(game: TennisGame, player1Score: Int, player2Score: Int, expectedScore: String) {
        val highestScore = Math.max(player1Score, player2Score)
        for (i in 0 until highestScore) {
            if (i < player1Score)
                game.wonPoint("player1")
            if (i < player2Score)
                game.wonPoint("player2")
        }
        game.getScore().shouldBe(expectedScore)
    }
}