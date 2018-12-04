require 'withdraw'

describe 'Withdraw' do
  let(:transaction) { Withdraw.new(500) }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  describe '#new' do
    it 'creates withdraw transaction' do
      expect(transaction.details).to eq({date: "10/01/2012", debit: "500.00"})
    end
  end
end
