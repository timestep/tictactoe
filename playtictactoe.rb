require './tictactoe.rb'

class Playtictac
	def initialize
		@playing = Tictactoe.new
		puts "What size of grid?"
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

		turn_max = @playing.dim**2
		turn_counter = 0
		turn = true	
		
		while turn_counter<turn_max
			
			if turn # player1 
				
				@playing.playeratr="o"
				@playing.choice
				@playing.check
				@playing.display
				@playing.check
				if @playing.win 
					puts "Player 1 Wins"
					break
				end
				turn = false			
				turn_counter+=1
				
			else
				@playing.playeratr="x"
				@playing.choice
				@playing.display
				@playing.check
				if @playing.win 
					puts "Player 2 Wins"
					break
				end
				turn = true
				turn_counter+=1
				
			end
		end
		if @playing.win
			puts "Congrats"
		else
			puts "Tied Game"
		end
	end
end

Playtictac.new