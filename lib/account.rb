# Account class
class Account
  attr_reader :history

  def initialize
    @balance = 0
    @history = []
  end

  def add(transaction)
    if transaction.details[:credit]
      transaction.details[:balance] = "#{decimals(credit_balance(transaction.details[:credit]))}"
    else
      transaction.details[:balance] = "#{decimals(debit_balance(transaction.details[:debit]))}"
    end
    @history << transaction.details
  end

  private

  def decimals(amount)
    format('%.2f', amount)
  end

  def credit_balance(amount)
    @balance += amount.to_i
  end

  def debit_balance(amount)
    @balance -= amount.to_i
  end
end
