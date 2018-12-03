# Account class
class Account
  attr_reader :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    deposit_balance(amount)
    entry = "#{time} || #{decimals(amount)} || || #{decimals(@balance)}\n"
    @history << entry
  end

  def withdraw(amount)
    withdraw_balance(amount)
    entry = "#{time} || || #{decimals(amount)} || #{decimals(@balance)}\n"
    @history << entry
  end

  private

  def decimals(amount)
    format('%.2f', amount)
  end

  def deposit_balance(amount)
    @balance += amount
  end

  def withdraw_balance(amount)
    @balance -= amount
  end

  def time
    Time.now.strftime('%d/%m/%Y')
  end
end
