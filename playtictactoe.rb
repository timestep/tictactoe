require './tictactoe.rb'

class Playtictac
	def initialize
		@playing = Tictactoe.new

		@playing.dim = gets.chomp.to_i # dimension of game
		# turn_max = @playing.dim*@playing.dim #maximum number of turns
		
		@playing.temp = []
		@playing.game = []
		0.upto(@playing.dim - 1) do |y|	
			0.upto(@playing.dim - 1) do |x|
				@playing.temp << 1 + x + (y*@playing.dim)
			end
			@playing.game << @playing.temp
			@playing.temp = []
		end

		@playing.display

		# turn_counter = 0	
		# while turn_counter<turn_max
		# 	turn = true
		# 	if turn # player1 
		# 		#player 1 input
				
		# 		#display
		# 		turn = false			
		# 		turn_counter+=1
		# 	else
		# 		#player2
		# 		turn = true
		# 		turn_counter+=1
		# 	end
		# end
	end
end

Playtictac.new