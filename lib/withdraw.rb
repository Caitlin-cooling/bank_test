require './lib/transaction.rb'

# Withdraw class
class Withdraw < Transaction
  attr_reader :debit

  def initialize(amount)
    super
    @debit = decimals(amount)
  end

  def deposit?
    false
  end
end
