require './lib/formatting.rb'

# Account class
class Account
  include Formatting
  attr_reader :history

  def initialize
    @balance = 0
    @history = []
  end

  def add(transaction)
    transaction[:balance] = if transaction[:credit]
                              decimals(credit_balance(transaction)).to_s
                            else
                              decimals(debit_balance(transaction)).to_s
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
