require 'account'

describe 'Account' do
  let(:account) { Account.new }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  describe '#history' do
    it 'begins with headers' do
      expect(account.history).to eq ['Date || Credit || Debit || Balance']
    end
  end

  describe '#desposit' do
    it 'adds money to the users account' do
      account.desposit(1000.00)
      expect(account.history).to eq ['Date || Credit || Debit || Balance', '10/01/2012 || 1000.00 || || 1000.00']
    end
  end
end
