require 'chess/piece/rook'


describe Chess::Piece::Rook do
  let(:rook) { Chess::Piece::Rook.new }

  describe '.can_move?' do
    it 'cannot move to origin' do
      rook.can_move?(0, 0).should be_false
    end

    it 'can move up as much as he wants' do
      (1..10000).each do |num|
        rook.can_move?(0, num).should be_true
      end
    end

    it 'can move down as much as he wants' do
      (1..10000).each do |num|
        rook.can_move?(0, -num).should be_true
      end
    end

    it 'can move right as much as he wants' do
      (1..10000).each do |num|
        rook.can_move?(num, 0).should be_true
      end
    end

    it 'can move left as much as he wants' do
      (1..10000).each do |num|
        rook.can_move?(-num, 0).should be_true
      end
    end

    it 'cannot move diagonals' do
      (1..10000).each do |num|
        rook.can_move?( num,  num).should be_false
        rook.can_move?(-num,  num).should be_false
        rook.can_move?( num, -num).should be_false
        rook.can_move?(-num, -num).should be_false
      end
    end

    it 'cannot move anywhere else' do
      [2, 3, 5, 7, 9].each do |i|
        [4, 6, 8, 10, 12].each do |j|
          rook.can_move?(i, j).should be_false
          rook.can_move?(j, i).should be_false
        end
      end
    end
  end

  describe '.can_take?' do
    it 'can take anywhere that it can move' do
      [0..100].each do |x|
        [0..100].each do |y|
          rook.can_take?(x, y).should == rook.can_move?(x, y)
        end
      end
    end
  end
end
