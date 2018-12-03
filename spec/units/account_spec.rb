require 'account'

describe 'Account' do
  let(:account) { Account.new }

  describe '#history' do
    it 'begins with headers' do
      expect(account.history).to eq ['Date || Credit || Debit || Balance']
    end
  end
end
