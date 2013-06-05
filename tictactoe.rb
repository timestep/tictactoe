class Tictactoe

	attr_accessor :check, :display, :dim, :game, :win, :column, :row, :dummy, :daig1, :daig2, :temp

	def initialize
		@game =[]
		@dim = 0
	end


	def check
		@win = false

		0.upto(@game.length - 1) do |y|
			@column = []
			@dummy = []
			0.upto(@game.length - 1) do |x|
				@column << @game[x][y]
				@dummy << @game[x][y]
			end
			if @column == @dummy.delete_if {|ele| ele != @column.first}
				win = true
			end
		end

		puts

		0.upto(@game.length - 1) do |x|
			@row = []
			@dummy = []
			0.upto(@game.length - 1) do |y|
				@row << @game[x][y]
				@dummy << @game[x][y]
			end
			if @row == @dummy.delete_if {|ele| ele != @row.first}
				win = true
			end
		end

		@daig1 = []
		@dummy =[]
		0.upto(@game.length - 1) do |x|
			@daig1 << @game[x][x]
			@dummy << @game[x][x]
		end
		if @daig1 == @dummy.delete_if {|ele| ele != @daig1.first}
			win = true
		end

		@daig2 = []
		@dummy =[]
		0.upto(@game.length - 1) do |x|
			@daig2 << @game[@game.length - 1 - x][x]
			@dummy << @game[@game.length - 1 - x][x]
		end
		if @daig2 == @dummy.delete_if {|ele| ele != @daig2.first}
			win = true
		end
	end

	def display
		0.upto(@game.length - 1) do |x|
			@row = []
			0.upto(@game.length - 1) do |y|
				@row << @game[x][y]
			end
			print @row
			puts
		end
	end

		# def win_state
		# 	if win = 1
		# 		puts "You win"
		# 	elsif win = 2
		# 		puts "You Lose"
		# 	else 
		# 		puts "Draw"
		# end
end

