require 'statement'

describe 'Statement' do

  let(:account_history) { ["10/01/2012 || 1000.00 || || 1000.00"] }
  let(:account) { double(:account, history: account_history) }
  let(:statement) { Statement.new(account) }

  describe '#view' do
    it 'shows the account statement' do
      expect(statement.view).to eq "Date || Credit || Debit || Balance 10/01/2012 || 1000.00 || || 1000.00"
    end
  end
end
