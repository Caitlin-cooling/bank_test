require 'formatting'

# Deposit class
class Deposit
  include Formatting
  attr_reader :details

  def initialize(amount)
    @amount = amount
    @details = {date: time, credit: decimals(amount) }
  end
end
