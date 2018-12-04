require 'account'
require 'statement'
require 'withdraw'
require 'deposit'

describe 'Check account information' do
  let(:withdraw) { Withdraw.new(500) }
  let(:deposit) { Deposit.new(2000) }
  let(:account) { Account.new }
  let(:statement) { Statement.new(account) }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  it 'statement starts with required headers' do
    expect(statement.view).to eq "Date || Credit || Debit || Balance\n"
  end

  it 'statement shows that a user deposited money' do
    account.add(deposit)
    expect(statement.view).to eq "Date || Credit || Debit || Balance\n10/01/2012 || 2000.00 || || 2000.00\n"
  end

  it 'statement shows that a user withdrew money' do
    account.add(deposit)
    account.add(withdraw)
    expect(statement.view).to eq "Date || Credit || Debit || Balance\n10/01/2012 || || 500.00 || 1500.00\n10/01/2012 || 2000.00 || || 2000.00\n"
  end
end
