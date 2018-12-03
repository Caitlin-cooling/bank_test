require 'statement'

describe 'Statement' do
  let(:account_history) { [{date: "10/01/2012", credit: "1000.00", balance: "1000.00"}] }
  let(:account) { double(:account, history: account_history) }
  let(:statement) { Statement.new(account) }

  describe '#view' do
    it 'shows the account statement' do
      expect(statement.view).to eq "Date || Credit || Debit || Balance\n10/01/2012 || 1000.00 ||  || 1000.00\n"
    end
  end
end
