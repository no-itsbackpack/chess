module Chess
	class Piece
		class Queen

			def can_move?(x,y)
				return false if (x.zero? and y.zero?)
				return true if x == 0 
				return true if y == 0
				return true if (x.abs == y.abs)
			end

			def move!
			end

		end
	end
end