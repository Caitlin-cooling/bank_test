require 'transaction'

describe 'Transaction' do

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  let(:transaction) { Transaction.new(1000) }

  describe '#date' do
    it 'stores a date' do
      expect(transaction.date).to eq "10/01/2012"
    end
    it 'stores a balance' do
      expect(transaction.balance).to eq 0
    end
  end
end
