require 'chess/piece/king'


describe Chess::Piece::King do
  describe '.available_moves' do
    let(:king) { Chess::Piece::King.new }

    it 'can move up 1' do
      king.available_moves.include?([0, 1]).should be_true
    end

    it 'cannot move up more than 1' do
      [2, 10, 100].each do |num|
        king.available_moves.include?([0, num]).should be_false
      end
    end

    it 'can move down 1' do
      king.available_moves.include?([0, -1]).should be_true
    end

    it 'cannot move down more than 1' do
      [-2, -10, -100].each do |num|
        king.available_moves.include?([0, num]).should be_false
      end
    end

    it 'can move right 1' do
      king.available_moves.include?([1, 0]).should be_true
    end
  end
end
