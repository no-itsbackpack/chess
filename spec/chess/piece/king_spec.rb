require 'chess/piece/king'


describe Chess::Piece::King do
  describe '.can_move?' do
    let(:king) { Chess::Piece::King.new }

    it 'can move up 1' do
      king.can_move?(0, 1).should be_true
    end

    it 'can move down 1' do
      king.can_move?(0, -1).should be_true
    end

    it 'can move right 1' do
      king.can_move?(1, 0).should be_true
    end

    it 'can move left 1' do
      king.can_move?(-1, 0).should be_true
    end

    it 'can move diagonals' do
      king.can_move?( 1,  1).should be_true
      king.can_move?(-1, -1).should be_true
      king.can_move?( 1, -1).should be_true
      king.can_move?(-1,  1).should be_true
    end

    it 'cannot move anywhere else' do
      [0, 2, 10, 100].each do |x|
        [0, 2, 10, 100].each do |y|
          king.can_move?( x,  y).should be_false
          king.can_move?(-x, -y).should be_false
          king.can_move?( x, -y).should be_false
          king.can_move?(-x,  y).should be_false
        end
      end
    end
  end

  describe '.can_take?' do
    it 'can take anywhere that it can move' do
      [0..100].each do |x|
        [0..100].each do |y|
          king.can_take?(x, y).should == king.can_move?(x, y)
        end
      end
    end
  end
end
