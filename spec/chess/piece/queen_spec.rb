require 'chess/piece/queen'


describe Chess::Piece::Queen do
  describe '.can_move?' do
    let(:queen) { Chess::Piece::Queen.new }

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
      queen.can_move?( 1,  1).should be_true
      queen.can_move?(-1, -1).should be_true
      queen.can_move?( 1, -1).should be_true
      queen.can_move?(-1,  1).should be_true
    end
  end
end
