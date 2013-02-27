module Chess
	class Piece
		class King

			def available_moves
				return [[0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]]
			end

		end
	end
end