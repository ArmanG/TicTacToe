require "./tictactoe"


class Winning < TicTacToe

	def initialize
		@@game = TicTacToe.new
	end
	
	def win
		return row_win || column_win || diagonal_win
	end

	def row_win
		3.times do |x|
			if @@game.board_list[x].uniq.length == 1
				return true
			end
		end
		return false
	end 

	def column_win
		3.times do |x|
			if [@@game.board_list[0][x], @@game.board_list[1][x], @@game.board_list[2][x]].uniq.length == 1
				return true
			end
		end
		return false
	end

	def diagonal_win
		if [@@game.board_list[0][0], @@game.board_list[1][1], @@game.board_list[2][2]].uniq.length == 1
			return true
		end
		return false
	end
end