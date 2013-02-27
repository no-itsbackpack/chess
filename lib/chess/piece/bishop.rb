module Chess
	class Piece
		class Bishop

			def can_move?(x,y)
				return false if (x.zero? and y.zero?)
				return false if x == 0 
				return false if y == 0
				return true if (x.abs == y.abs)
			end

		end
	end
end