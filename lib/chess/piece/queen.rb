module Chess
	class Piece
		class Queen

			def can_move?(move)
				return [[0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]].include?(move)
			end

		end
	end
end