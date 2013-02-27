require 'chess/piece/king'


describe Chess::Piece::King do
  describe '.available_moves' do
    it 'can move up 1' do
      p = Chess::Piece::King.new
      p.available_moves
    end
  end
end
