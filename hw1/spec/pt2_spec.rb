require 'pt2'

describe 'rps_game_winner' do
  it 'determines the winner of rps game' do
    rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ]).should eq(
      ["Dave", "S"])
    rps_game_winner([ [ "Paul", "p" ], [ "Paul", "S" ] ]).should eq(
      ["Paul", "S"])
    rps_game_winner([ [ "Armando", "S" ], [ "Dave", "S" ] ]).should eq(
      ["Armando", "S"])
    rps_game_winner([ [ "Paul", "R" ], [ "Dave", "s" ] ]).should eq(
      ["Paul", "R"])
    rps_game_winner([ [ "Paul", "r" ], [ "Dave", "P" ] ]).should eq(
      [ "Dave", "P" ])
    lambda {rps_game_winner([ [ "Armando", "S" ], [ "Dave", "S" ], [ "Paul", "S" ] ])}.should raise_error 
    lambda {rps_game_winner([ [ "Armando", "X" ], [ "Dave", "S" ]])}.should raise_error(NoSuchStrategyError)
  end
end

describe 'rps_tournament_winner' do
  it 'winner takes all' do
    rps_tournament_winner([
[
[ ["Armando", "P"], ["Dave", "S"] ],
[ ["Richard", "R"],  ["Michael", "S"] ],
],
[ 
[ ["Allen", "S"], ["Omer", "P"] ],
[ ["David E.", "R"], ["Richard X.", "P"] ]
]
]).should eq(["Richard", "R"])
  end
end
