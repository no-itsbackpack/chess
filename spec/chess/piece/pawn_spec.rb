require 'chess/piece/pawn'


describe Chess::Piece::Pawn do
  let(:moving_up_pawn)   { Chess::Piece::Pawn.new(:up) }
  let(:moving_down_pawn) { Chess::Piece::Pawn.new(:down) }

  describe '.first_move?' do
    it 'be first move' do
      moving_up_pawn.send(:first_move?).should be_true
      moving_down_pawn.send(:first_move?).should be_true
    end

    it 'is private' do
      expect{moving_up_pawn.first_move?}.to raise_error(NoMethodError)
    end
  end

  describe '.move!' do
    it 'is no longer first move after move!' do
      moving_up_pawn.move!
      moving_up_pawn.send(:first_move?).should be_false

      moving_down_pawn.move!
      moving_down_pawn.send(:first_move?).should be_false
    end
  end

  describe '.can_move?' do
    it 'can move forwards one' do
      moving_up_pawn.can_move?(0, 1).should be_true
      moving_down_pawn.can_move?(0, -1).should be_true
    end

    it 'cannot move backwards' do
      (1..100).each do |num|
        moving_up_pawn.can_move?(0, -num).should be_false
        moving_down_pawn.can_move?(0, num).should be_false
      end
    end

    it 'can move forwards twice on first move' do
      moving_up_pawn.stub!(:first_move?).and_return(true)
      moving_down_pawn.stub!(:first_move?).and_return(true)

      moving_up_pawn.can_move?(0, 2).should be_true
      moving_down_pawn.can_move?(0, -2).should be_true
    end

    it 'cannot move forwards twice on non first move' do
      moving_up_pawn.stub!(:first_move?).and_return(false)
      moving_down_pawn.stub!(:first_move?).and_return(false)

      moving_up_pawn.can_move?(0, 2).should be_false
      moving_down_pawn.can_move?(0, -2).should be_false
    end
  end
end
