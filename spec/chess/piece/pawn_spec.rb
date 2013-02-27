require 'chess/piece/pawn'


describe Chess::Piece::Pawn do
  describe '.can_move?' do
    let(:moving_up_pawn)   { Chess::Piece::Pawn.new(:up) }
    let(:moving_down_pawn) { Chess::Piece::Pawn.new(:down) }

    it 'moves forwards one' do
      moving_up_pawn.can_move?(0, 1).should be_true
      moving_down_pawn.can_move?(0, -1).should be_true
    end
  end
end
