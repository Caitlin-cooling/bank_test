# Account class
class Account
  def initialize
    @balance = 0
    @history = []
  end

  def print_statement
    show = "Date || Credit || Debit || Balance\n"
    @history.reverse_each do |entry|
      show += entry
    end
    show
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
