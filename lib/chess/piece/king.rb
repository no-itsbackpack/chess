module Chess
	class Piece
		class King

			def can_move?(x,y)
				return [[0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]].include?([x,y])
			end

			def move!
			end
		
			def can_take?(x,y)
				can_move?(x,y)
			end

		end
	end
end