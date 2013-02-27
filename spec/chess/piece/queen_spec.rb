require 'chess/piece/queen'


describe Chess::Piece::Queen do
  describe '.available_moves' do
    let(:queen) { Chess::Piece::Queen.new }

    it 'can move up 1' do
      queen.available_moves.include?([0, 1]).should be_true
    end

    it 'can move down 1' do
      queen.available_moves.include?([0, -1]).should be_true
    end

    it 'can move right 1' do
      queen.available_moves.include?([1, 0]).should be_true
    end

    it 'can move left 1' do
      queen.available_moves.include?([-1, 0]).should be_true
    end

    it 'can move diagonals' do
      queen.available_moves.include?([ 1,  1]).should be_true
      queen.available_moves.include?([-1, -1]).should be_true
      queen.available_moves.include?([ 1, -1]).should be_true
      queen.available_moves.include?([-1,  1]).should be_true
    end
  end
end
