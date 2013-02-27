PIECE_STRS = %w[Bishop King Knight Queen Pawn Rook]
PIECE_STRS.each do |piece_str|
  require "chess/piece/#{piece_str.downcase}"
end


describe Chess::Piece do
  let(:piece_classes) { piece_classes = PIECE_STRS.map{|pstr| Chess::Piece.const_get(pstr)} }

  it 'has all piece classes' do
    piece_classes.length.should == PIECE_STRS.length
  end

  it 'has same method signatures' do
    methods = piece_classes.first.instance_methods(false).sort
    piece_classes.each do |pclass|
      pclass.instance_methods(false).sort.should == methods
    end
  end
end
