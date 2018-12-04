require 'withdraw'

describe 'Withdraw' do
  let(:transaction) { Withdraw.new(500) }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  describe '#new' do
    it 'creates withdraw transaction' do
      expect(transaction.date).to eq "10/01/2012"
      expect(transaction.debit).to eq "500.00"
      expect(transaction.balance).to eq 0
    end
  end

  describe '#deposit?' do
    it 'determines that the transaction is not a deposit' do
      expect(transaction.deposit?).to eq false
    end
  end
end
