require 'account'

describe 'Check account information' do
  let(:account) { Account.new }

  it 'shows empty date, credit, debit, balance' do
    expect(account.show_history).to eq 'Date || Credit || Debit || Balance'
  end
end
