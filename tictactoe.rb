class Tictactoe

	attr_accessor :check,:playeratr, :display, :dim, :game, :win, :column, :row, :dummy, :daig1, :daig2, :temp, :val

	def initialize
		@game = []
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
				@win = true
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
				@win = true
			end
		end

		@daig1 = []
		@dummy =[]
		0.upto(@game.length - 1) do |x|
			@daig1 << @game[x][x]
			@dummy << @game[x][x]
		end
		if @daig1 == @dummy.delete_if {|ele| ele != @daig1.first}
			@win = true
		end

		@daig2 = []
		@dummy =[]
		0.upto(@game.length - 1) do |x|
			@daig2 << @game[@game.length - 1 - x][x]
			@dummy << @game[@game.length - 1 - x][x]
		end
		if @daig2 == @dummy.delete_if {|ele| ele != @daig2.first}
			@win = true
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



	def choice
		puts "Which position number?"
		@val=gets.chomp.to_i
		if @val>@dim**2 || @val == 0
			puts "Please choose a real number"
			self.choice
		end
		0.upto(@dim-1) do |x|
			0.upto(@dim-1) do |y|
				if @game[x][y] == @val
					@game[x][y] = @playeratr
				end
			end
		end
		
	end

end

