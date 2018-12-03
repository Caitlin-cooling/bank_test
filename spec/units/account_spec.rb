require 'account'

describe 'Account' do
  let(:account) { Account.new }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  describe '#history' do
    it 'begins with headers' do
      expect(account.print_statement).to eq "Date || Credit || Debit || Balance\n"
    end
  end

  describe '#desposit' do
    it 'adds money to the users account' do
      account.deposit(1000.00)
      expect(account.print_statement).to eq "Date || Credit || Debit || Balance\n10/01/2012 || 1000.00 || || 1000.00\n"
    end
  end

  describe '#withdraw' do
    it 'adds money to the users account' do
      account.deposit(2000.00)
      account.withdraw(500.00)
      expect(account.print_statement).to eq "Date || Credit || Debit || Balance\n10/01/2012 || || 500.00 || 1500.00\n10/01/2012 || 2000.00 || || 2000.00\n"
    end
  end
end
