module Chess
	class Piece
		class Queen

			def can_move?(x,y)
				return false if x.zero? and y.zero?
				return true if x == 0 
				return true if y == 0
				return [[0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]].include?([x,y])
			end

		end
	end
end