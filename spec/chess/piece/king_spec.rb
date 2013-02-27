require 'chess/piece/king'


describe Chess::King do
  describe '.move' do
    it 'moves' do
      p = Chess::King.new
      p.move
    end
  end
end
