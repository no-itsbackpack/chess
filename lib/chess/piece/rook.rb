module Chess
	class Piece
		class Rook

			def can_move?(x,y)
				return false if (x.zero? and y.zero?)
				return true if x == 0 
				return true if y == 0
			end

			def move!
			end

		end
	end
end
