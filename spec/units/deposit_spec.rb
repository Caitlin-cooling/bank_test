require 'deposit'

describe 'Deposit' do

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  let(:transaction) { Deposit.new(1000) }

  describe '#new' do
    it 'creates deposit transaction' do
      expect(transaction.date).to eq "10/01/2012"
      expect(transaction.credit).to eq "1000.00"
      expect(transaction.balance).to eq 0
    end
  end

  describe '#deposit?' do
    it 'determines that the transaction is a deposit' do
      expect(transaction.deposit?).to eq true
    end
  end
end
