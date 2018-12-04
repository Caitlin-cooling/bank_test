require './lib/transaction.rb'

# Withdraw class
class Withdraw < Transaction
  def initialize(amount)
    super
    @details[:debit] = decimals(amount)
  end
end
