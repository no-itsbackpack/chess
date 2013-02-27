require 'chess/piece/king'


describe Chess::Piece::King do
  describe '.available_moves' do
    it 'can move up 1' do
      p = Chess::Piece::King.new
      p.available_moves.include?(1).should be_true
    end

    it 'cannot move up more than 1' do
      p = Chess::Piece::King.new
      [2, 10, 100].each do |num|
        p.available_moves.include?(num).should be_false
      end
    end

    it 'can move down 1' do
      p = Chess::Piece::King.new
      p.available_moves.include?(-1).should be_true
    end
  end
end
