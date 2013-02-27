module Chess
	class Piece
		class Bishop

			def can_move?(x,y)
				return false if (x.zero? and y.zero?)
				return true if (x.abs == y.abs)
			end

			def move!
			end

		end
	end
end
