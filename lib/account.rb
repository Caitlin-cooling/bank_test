require 'formatting'

# Account class
class Account
  include Formatting
  attr_reader :history

  def initialize
    @balance = 0
    @history = []
  end

  def add(transaction)
    if transaction[:credit]
      transaction[:balance] = "#{decimals(credit_balance(transaction))}"
    else
      transaction[:balance] = "#{decimals(debit_balance(transaction))}"
    end
    @history << transaction
  end

  private

  def credit_balance(transaction)
    @balance += transaction[:credit].to_i
  end

  def debit_balance(transaction)
    @balance -= transaction[:debit].to_i
  end
end
