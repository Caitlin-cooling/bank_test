require 'account'

describe 'Account' do
  let(:deposit) { double(:deposit, details: {date: "10/01/2012", credit: "1000.00"})}
  let(:withdraw) { double(:withdraw, details: {date: "10/01/2012", debit: "100.00"})}
  let(:account) { Account.new }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  describe '#add' do
    it 'adds deposit entry to the account history' do
      account.add(deposit.details)
      expect(account.history).to eq [{date: "10/01/2012", credit: "1000.00", balance: "1000.00"}]
    end

    it 'adds withdrawl entry to the account history' do
      account.add(deposit.details)
      account.add(withdraw.details)
      expect(account.history).to eq [{date: "10/01/2012", credit: "1000.00", balance: "1000.00"}, {date: "10/01/2012", debit: "100.00", balance: "900.00"}]
    end
  end
end
