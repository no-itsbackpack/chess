module Chess
	class Piece
		class Rook

			def can_move?(x,y)
				return false if (x.zero? and y.zero?)
				return true if x == 0 
				return true if y == 0
				return false if (x.abs == y.abs)
			end

		end
	end
end