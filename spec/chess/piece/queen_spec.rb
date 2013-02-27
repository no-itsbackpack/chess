require 'chess/piece/queen'


describe Chess::Piece::Queen do
  describe '.can_move?' do
    let(:queen) { Chess::Piece::Queen.new }

    it 'can move up 1' do
      queen.can_move?([0, 1]).should be_true
    end

    it 'can move down 1' do
      queen.can_move?([0, -1]).should be_true
    end

    it 'can move right 1' do
      queen.can_move?([1, 0]).should be_true
    end

    it 'can move left 1' do
      queen.can_move?([-1, 0]).should be_true
    end

    it 'can move diagonals' do
      queen.can_move?([ 1,  1]).should be_true
      queen.can_move?([-1, -1]).should be_true
      queen.can_move?([ 1, -1]).should be_true
      queen.can_move?([-1,  1]).should be_true
    end

    it 'can move up as much as she wants' do
      (1..10000).each do |num|
        queen.can_move?([0, num]).should be_true
      end
    end
  end
end
