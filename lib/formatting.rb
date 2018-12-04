module Formatting
  def decimals(amount)
    format('%.2f', amount)
  end

  def time
    Time.now.strftime('%d/%m/%Y')
  end
end
