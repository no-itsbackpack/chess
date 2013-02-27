require 'chess/piece/king'


describe Chess::Piece::King do
  describe '.move' do
    it 'moves' do
      p = Chess::Piece::King.new
      p.move
    end
  end
end
