module Chess
	class Piece
		class Pawn

			def initialize(up_or_down)
					@up_or_down = up_or_down
			end

			def can_move?(x,y)
				return true if (x == 0  and y == 1) and @up_or_down == :up
				return true if (x == 0  and y == -1) and @up_or_down == :down
			end

		end
	end
end