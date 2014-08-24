

class TicTacToe 

	def initialize
		@@board = [["A","B","C"],["D","E","F"],["G","H","I"]]
		@@moves = 0
	end

	def current_state
			3.times {|i| puts "#{@@board[i]}"}
		end

	def board_list
		return @@board
	end

	def num_moves
		return @@moves == 9
	end

	def move(name, pos)
		@@moves += 1
		count = 0
		3.times do |x|
			@@board[x].length.times do |y|
				if @@board[x][y] == pos && name == $player1
					@@board[x][y] = "X"
				elsif @@board[x][y] == pos && name == $player2
					@@board[x][y] = "0"
				end
			end
		end
	end
end


	
