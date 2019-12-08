require 'peep'

describe Peep do
  describe '.all' do
    it 'return all peeps' do
      peeps = Peep.all

      expect(peeps).to include("first peeps message")
      expect(peeps).to include("second peeps message")
    end
  end
end