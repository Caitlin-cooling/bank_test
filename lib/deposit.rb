require './lib/transaction.rb'

# Deposit class
class Deposit < Transaction
  def initialize(amount)
    super(amount)
    @details[:credit] = decimals(amount)
  end
end
