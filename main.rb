require "./tictactoe"
require "./winning"


puts "Player 1's name:"
$player1 = gets.chomp
puts "Player 2's name:"
$player2 = gets.chomp

game = TicTacToe.new
game.current_state
winning = Winning.new

while !winning.win
	
		puts "#{$player1}'s turn:"
		game.move($player1, gets.chomp)
		game.current_state	

	if !winning.win && !game.num_moves	
		puts "#{$player2}'s turn:"
		game.move($player1, gets.chomp)
		game.current_state	
	end
end

puts "Game Over!"