require 'deposit'

describe 'Deposit' do

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  let(:transaction) { Deposit.new(1000) }

  describe '#new' do
    it 'creates deposit transaction' do
      expect(transaction.details).to eq({date: "10/01/2012", credit: "1000.00"})
    end
  end
end
