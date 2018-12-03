require 'account'

describe 'Check account information' do
  let(:account) { Account.new }

  before do
    fake_time = Time.new(2012, 0o1, 10)
    allow(Time).to receive(:now).and_return(fake_time)
  end

  it 'shows empty date, credit, debit, balance' do
    expect(account.show_history).to include 'Date || Credit || Debit || Balance'
  end

  it 'shows that a user deposited money' do
    account.deposit(1000.00)
    expect(account.show_history).to include '10/01/2012 || 1000.00 || || 1000.00'
  end

  it 'shows that a user withdrew money' do
    account.deposit(2000.00)
    account.withdraw(500.00)
    expect(account.show_history).to include '10/01/2012 || || 500.00 || 1500.00'
  end
end
