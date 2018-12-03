# Account class
class Account
  attr_reader :history

  def initialize
    @history = ['Date || Credit || Debit || Balance']
  end

  def show_history
    @history.each do |entry|
      p entry
    end
  end

  def desposit(amount, date)
    @history << '10-01-2012 || 1000.00 || || 1000.00'
  end
end
