require 'chess/piece/knight'


describe Chess::Piece::Knight do
  describe '.can_move?' do
    let(:knight) { Chess::Piece::Knight.new }

    it 'can move like a knight' do
      knight.can_move?( 1,  2).should be_true
      knight.can_move?(-1,  2).should be_true
      knight.can_move?( 1, -2).should be_true
      knight.can_move?(-1, -2).should be_true

      knight.can_move?( 2,  1).should be_true
      knight.can_move?(-2,  1).should be_true
      knight.can_move?( 2, -1).should be_true
      knight.can_move?(-2, -1).should be_true
    end

    it 'cannot move anywhere else' do
      [2, 3, 5, 7, 9].each do |x|
        [4, 6, 8, 10, 12].each do |y|
          knight.can_move?( x,  y).should be_false
          knight.can_move?(-x, -y).should be_false
          knight.can_move?( x, -y).should be_false
          knight.can_move?(-x,  y).should be_false
        end
      end
    end
  end
end
