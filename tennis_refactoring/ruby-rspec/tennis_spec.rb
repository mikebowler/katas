require './tennis1'
require './tennis2'
require './tennis3'

TEST_CASES = [
   [0, 0, "Love-All"],
   [1, 1, "Fifteen-All"],
   [2, 2, "Thirty-All"],
   [3, 3, "Deuce"],
   [4, 4, "Deuce"],
   
   [1, 0, "Fifteen-Love"],
   [0, 1, "Love-Fifteen"],
   [2, 0, "Thirty-Love"],
   [0, 2, "Love-Thirty"],
   [3, 0, "Forty-Love"],
   [0, 3, "Love-Forty"],
   [4, 0, "Win for player1"],
   [0, 4, "Win for player2"],
   
   [2, 1, "Thirty-Fifteen"],
   [1, 2, "Fifteen-Thirty"],
   [3, 1, "Forty-Fifteen"],
   [1, 3, "Fifteen-Forty"],
   [4, 1, "Win for player1"],
   [1, 4, "Win for player2"],
   
   [3, 2, "Forty-Thirty"],
   [2, 3, "Thirty-Forty"],
   [4, 2, "Win for player1"],
   [2, 4, "Win for player2"],
   
   [4, 3, "Advantage player1"],
   [3, 4, "Advantage player2"],
   [5, 4, "Advantage player1"],
   [4, 5, "Advantage player2"],
   [15, 14, "Advantage player1"],
   [14, 15, "Advantage player2"],
   
   [6, 4, 'Win for player1'], 
   [4, 6, 'Win for player2'], 
   [16, 14, 'Win for player1'], 
   [14, 16, 'Win for player2'], 
]

[TennisGame1, TennisGame2, TennisGame3].each do |game_class|
  describe game_class.to_s do
    TEST_CASES.each do |p1Points, p2Points, score|
      it "should score #{score} for #{p1Points},#{p2Points}" do
        game = game_class.new('player1', 'player2')
        p1Points.times { game.won_point 'player1' }
        p2Points.times { game.won_point 'player2' }
      
        expect(game.score).to eql score
      end
    end
  end
end