require 'peep'

describe Peep do

  describe '.all' do
    it 'return a list peeps' do
      connection = PG.connect(dbname: 'chitter_manager_test')

      connection.exec("INSERT INTO peeps (message) VALUES ( 'first peeps message');")
      connection.exec("INSERT INTO peeps (message) VALUES ( 'second peeps message');")

      peeps = Peep.all

      # add the test data
      expect(peeps).to include "first peeps message"
      expect(peeps).to include "second peeps message"
    end
  end

  describe '.create' do
    it 'creates a new peep' do
      Peep.create(message: 'peeping a message on chitter')
      peeps = Peep.all
      expect(Peep.all).to include 'peeping a message on chitter'
    end
  end
end