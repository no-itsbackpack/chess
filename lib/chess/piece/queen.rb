module Chess
	class Piece
		class Queen

			def available_moves
				return [[0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]]
			end

		end
	end
end