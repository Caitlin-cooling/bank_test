# Transaction super class
class Transaction
  include Formatting
  attr_reader :date
  attr_accessor :balance

  def initialize(_amount)
    @date = time
    @balance = 0
  end
end
