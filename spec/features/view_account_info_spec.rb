require 'account'

describe 'Check account information' do
  let(:account) { Account.new }
  let(:date1) { allow(Time).to receive(:now).and_return '10-01-2012'}

  it 'shows empty date, credit, debit, balance' do
    expect(account.show_history).to include 'Date || Credit || Debit || Balance'
  end

  it 'shows that a user deposited money' do
    account.desposit(1000.00, date1)
    expect(account.show_history).to include '10-01-2012 || 1000.00 || || 1000.00'
  end
end
