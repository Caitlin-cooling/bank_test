require 'account'

describe 'Account' do
  let(:account) { Account.new }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  describe '#deposit' do
    it 'adds deposit entry to the account history' do
      account.deposit(1000.00)
      expect(account.history).to eq [{date: "10/01/2012", credit: "1000.00", balance: "1000.00"}]
    end
  end

  describe '#withdraw' do
    it 'adds withdrawl entry to the account history' do
      account.deposit(2000.00)
      account.withdraw(500.00)
      expect(account.history).to eq [{date: "10/01/2012", credit: "2000.00", balance: "2000.00"}, {date: "10/01/2012", debit: "500.00", balance: "1500.00"}]
    end
  end
end
