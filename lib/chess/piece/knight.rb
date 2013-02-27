module Chess
	class Piece
		class Knight

			def can_move?(x,y)
				x = x.abs
				y = y.abs

				return true if (x == 1 and y == 2)
				return true if (x == 2 and y == 1)
			end

			def move!
			end

		end
	end
end