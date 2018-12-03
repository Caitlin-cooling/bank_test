# Account class
class Account
  attr_reader :history

  def initialize
    @balance = 0
    @history = ['Date || Credit || Debit || Balance']
  end

  def show_history
    @history.each do |entry|
      p entry
    end
  end

  def desposit(amount)
    update_balance(amount)
    time = Time.now.strftime('%d/%m/%Y')
    entry = "#{time} || #{decimals(amount)} || || #{decimals(@balance)}"
    @history << entry
  end

  private

  def decimals(amount)
    format('%.2f', amount)
  end

  def update_balance(amount)
    @balance += amount
  end
end
