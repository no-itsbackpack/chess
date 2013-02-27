require 'chess/piece/bishop'


describe Chess::Piece::Bishop do
  describe '.can_move?' do
    let(:bishop) { Chess::Piece::Bishop.new }

    it 'cannot move to origin' do
      bishop.can_move?(0, 0).should be_false
    end

    it 'can move diagonals' do
      (1..10000).each do |num|
        bishop.can_move?( num,  num).should be_true
        bishop.can_move?(-num,  num).should be_true
        bishop.can_move?( num, -num).should be_true
        bishop.can_move?(-num, -num).should be_true
      end
    end

    it 'cannot move vertically' do
      (1..10000).each do |num|
        bishop.can_move?(0, num).should be_false
        bishop.can_move?(0, -num).should be_false
      end
    end

    it 'cannot move horizontally' do
      (1..10000).each do |num|
        bishop.can_move?(num, 0).should be_false
        bishop.can_move?(-num, 0).should be_false
      end
    end

    it 'cannot move anywhere else' do
      [2, 3, 5, 7, 9].each do |i|
        [4, 6, 8, 10, 12].each do |j|
          bishop.can_move?(i, j).should be_false
          bishop.can_move?(j, i).should be_false
        end
      end
    end
  end
end
