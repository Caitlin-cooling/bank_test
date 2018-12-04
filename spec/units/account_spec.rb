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
      expect(account.add(deposit)).to eq [deposit]
    end

    it 'adds withdrawl entry to the account history' do
      expect(account.add(withdraw)).to eq [withdraw]
    end
  end
end
