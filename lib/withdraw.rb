# Withdraw class
class Withdraw
  attr_reader :details

  def initialize(amount)
    @amount = amount
    @details = {date: time, debit: decimals(amount) }
  end

  private

  def time
    Time.now.strftime('%d/%m/%Y')
  end

  def decimals(amount)
    format('%.2f', amount)
  end
end
