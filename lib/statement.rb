# Statement class
class Statement
  def initialize(account)
    @transactions = account.history
  end

  def view
    text = "Date || Credit || Debit || Balance\n"
    @transactions.reverse_each { |transaction| text += format(transaction) }
    text
  end

  def format(transaction)
    "#{transaction[:date]} || " \
    "#{transaction[:credit]} || " \
    "#{transaction[:debit]} || " \
    "#{transaction[:balance]}\n"
  end
end
