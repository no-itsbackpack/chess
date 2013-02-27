require 'chess/piece/queen'


describe Chess::Piece::Queen do
  let(:queen) { Chess::Piece::Queen.new }

  describe '.can_move?' do
    it 'cannot move to origin' do
      queen.can_move?(0, 0).should be_false
    end

    it 'can move up as much as she wants' do
      (1..10000).each do |num|
        queen.can_move?(0, num).should be_true
      end
    end

    it 'can move down as much as she wants' do
      (1..10000).each do |num|
        queen.can_move?(0, -num).should be_true
      end
    end

    it 'can move right as much as she wants' do
      (1..10000).each do |num|
        queen.can_move?(num, 0).should be_true
      end
    end

    it 'can move left as much as she wants' do
      (1..10000).each do |num|
        queen.can_move?(-num, 0).should be_true
      end
    end

    it 'can move diagonals' do
      (1..10000).each do |num|
        queen.can_move?( num,  num).should be_true
        queen.can_move?(-num,  num).should be_true
        queen.can_move?( num, -num).should be_true
        queen.can_move?(-num, -num).should be_true
      end
    end

    it 'cannot move anywhere else' do
      [2, 3, 5, 7, 9].each do |i|
        [4, 6, 8, 10, 12].each do |j|
          queen.can_move?(i, j).should be_false
          queen.can_move?(j, i).should be_false
        end
      end
    end
  end

  describe '.can_take?' do
    it 'can take anywhere that it can move' do
      (0..100).each do |x|
        (0..100).each do |y|
          queen.can_take?(x, y).should == queen.can_move?(x, y)
        end
      end
    end
  end
end
