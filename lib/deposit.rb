require './lib/transaction.rb'

# Deposit class
class Deposit < Transaction
  attr_reader :credit

  def initialize(amount)
    super
    @credit = decimals(amount)
  end

  def deposit?
    true
  end
end
