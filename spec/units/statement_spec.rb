require 'statement'

describe 'Statement' do
  let(:deposit) { double(:deposit, date: "10/01/2012", credit: "1000.00", balance: "1000.00", deposit?: true)}
  let(:account) { double(:account, history: [deposit]) }
  let(:statement) { Statement.new(account) }

  describe '#view' do
    it 'shows the account statement' do
      expect(statement.view).to eq "Date || Credit || Debit || Balance\n10/01/2012 || 1000.00 || || 1000.00\n"
    end
  end
end
