module Chess
	class Piece
		class Pawn

			def initialize(up_or_down)
					@up_or_down = up_or_down
			end

			def can_take?(x,y)

				return true if x == 1 and y == 1 and @up_or_down == :up 
				return true if x == -1 and y == 1 and @up_or_down == :up

				return true if x == 1 and y == -1 and @up_or_down == :down
				return true if x == -1 and y == -1 and @up_or_down == :down
			end

			def can_move?(x,y)
				return true if (x == 0  and y == 1) and @up_or_down == :up 
				return true if (x == 0  and y == -1) and @up_or_down == :down
				return true if (x == 0  and y == 2) and @up_or_down == :up and first_move?
				return true if (x == 0  and y == -2) and @up_or_down == :down and first_move?
				
			end

			def move!
				@move = true
			end


			private 
				def first_move?
						return !@move
				end

		end
	end
end