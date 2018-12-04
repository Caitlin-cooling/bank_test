# Transaction super class
class Transaction
  include Formatting
  attr_reader :details

  def initialize(_amount)
    @details = { date: time }
  end
end
