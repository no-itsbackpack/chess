require 'chess/piece/king'


describe Chess::Piece::King do
  describe '.available_moves' do
    let(:king) { Chess::Piece::King.new }

    it 'can move up 1' do
      king.available_moves.include?([0, 1]).should be_true
    end

    it 'can move down 1' do
      king.available_moves.include?([0, -1]).should be_true
    end

    it 'can move right 1' do
      king.available_moves.include?([1, 0]).should be_true
    end

    it 'can move left 1' do
      king.available_moves.include?([-1, 0]).should be_true
    end

    it 'can move diagonals' do
      king.available_moves.include?([ 1,  1]).should be_true
      king.available_moves.include?([-1, -1]).should be_true
      king.available_moves.include?([ 1, -1]).should be_true
      king.available_moves.include?([-1,  1]).should be_true
    end

    it 'cannot move anywhere else' do
      [0, 2, 10, 100].each do |x|
        [0, 2, 10, 100].each do |y|
          king.available_moves.include?([ x,  y]).should be_false
          king.available_moves.include?([-x, -y]).should be_false
          king.available_moves.include?([ x, -y]).should be_false
          king.available_moves.include?([-x,  y]).should be_false
        end
      end
    end
  end
end
