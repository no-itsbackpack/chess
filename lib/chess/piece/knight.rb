module Chess
	class Piece
		class Knight

			def can_move?(x,y)
				x = x.abs
				y = y.abs
				return false if (x.zero? and y.zero?)
				return false if x == 0 
				return false if y == 0
				return false if (x == y)
				return true if ((x+1) == y)
				return true if (x == (y+1))
			end

		end
	end
end