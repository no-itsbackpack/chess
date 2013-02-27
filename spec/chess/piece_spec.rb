require 'chess/piece'


describe Chess::Piece do
  describe '.move' do
    it 'moves' do
      p = Chess::Piece.new
      p.move
    end
  end
end
