require 'account'
require 'statement'

describe 'Check account information' do
  let(:account) { Account.new }
  let(:statement) { Statement.new(account) }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  it 'shows empty date, credit, debit, balance' do
    expect(statement.view).to eq "Date || Credit || Debit || Balance\n"
  end

  it 'shows that a user deposited money' do
    account.deposit(1000.00)
    expect(statement.view).to eq "Date || Credit || Debit || Balance\n10/01/2012 || 1000.00 || || 1000.00\n"
  end

  it 'shows that a user withdrew money' do
    account.deposit(2000.00)
    account.withdraw(500.00)
    expect(statement.view).to eq "Date || Credit || Debit || Balance\n10/01/2012 || || 500.00 || 1500.00\n10/01/2012 || 2000.00 || || 2000.00\n"
  end
end
