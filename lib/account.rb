# Account class
class Account
  attr_reader :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    credit_balance(amount)
    transaction = { date: time, credit: decimals(amount),\
                    balance: decimals(@balance) }
    @history << transaction
  end

  def withdraw(amount)
    debit_balance(amount)
    transaction = { date: time, debit: decimals(amount),\
                    balance: decimals(@balance) }
    @history << transaction
  end

  private

  def decimals(amount)
    format('%.2f', amount)
  end

  def credit_balance(amount)
    @balance += amount
  end

  def debit_balance(amount)
    @balance -= amount
  end

  def time
    Time.now.strftime('%d/%m/%Y')
  end
end
