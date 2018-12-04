require 'transaction'

describe 'Transaction' do

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  let(:transaction) { Transaction.new(1000) }

  describe '#new' do
    it 'has a date' do
      expect(transaction.details).to eq({date: "10/01/2012"})
    end
  end
end
