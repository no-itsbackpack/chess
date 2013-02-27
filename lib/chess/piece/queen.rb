module Chess
	class Piece
		class Queen

			def can_move?(x,y)
				return true if x == 0 
				return [[0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]].include?([x,y])
			end

		end
	end
end