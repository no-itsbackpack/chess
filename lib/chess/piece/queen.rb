module Chess
	class Piece
		class Queen

			def can_move?(x,y)
				return false if x.zero? and y.zero?
				return true if x == 0 
				return true if y == 0
				return true if !x.zero? and !y.zero?
			end

		end
	end
end