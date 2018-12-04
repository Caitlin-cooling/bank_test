# Withdraw class
class Withdraw
  include Formatting
  attr_reader :details

  def initialize(amount)
    @amount = amount
    @details = { date: time, debit: decimals(amount) }
  end
end
