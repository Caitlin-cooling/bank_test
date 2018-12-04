require 'account'

describe 'Account' do
  let(:deposit) { double(:deposit, date: "10/01/2012", credit: "1000.00", :balance= => "1000.00", balance: 1000.00, deposit?: true)}
  let(:withdraw) { double(:withdraw, date: "10/01/2012", debit: "100.00", :balance= => "100.00", balance: 900.00, deposit?: false)}
  let(:account) { Account.new }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  describe '#add' do
    it 'adds deposit entry to the account history' do
      account.add(deposit)
      expect(account.history.first.date).to eq "10/01/2012"
      expect(account.history.first.credit).to eq "1000.00"
      expect(account.history.first.balance).to eq 1000.0
    end

    it 'adds withdrawl entry to the account history' do
      account.add(deposit)
      account.add(withdraw)
      expect(account.history.last.date).to eq "10/01/2012"
      expect(account.history.last.debit).to eq "100.00"
      expect(account.history.last.balance).to eq 900.0
    end
  end
end
