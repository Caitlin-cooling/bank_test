class Deposit
  attr_reader :details

  def initialize(amount)
    @amount = amount
    @details = {date: time, credit: decimals(amount) }
  end

  private

  def time
    Time.now.strftime('%d/%m/%Y')
  end

  def decimals(amount)
    format('%.2f', amount)
  end
end
