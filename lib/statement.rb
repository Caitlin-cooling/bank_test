# Statement class
class Statement
  include Formatting

  def initialize(account)
    @transactions = account.history
  end

  def view
    text = "Date || Credit || Debit || Balance\n"
    @transactions.reverse_each do |transaction|
      if transaction.deposit?
       text += format_deposit(transaction)
      else
       text += format_withdraw(transaction)
      end
    end
    text
  end

  def format_deposit(transaction)
    "#{transaction.date} || " \
    "#{transaction.credit} || || " \
    "#{decimals(transaction.balance)}\n"
  end

  def format_withdraw(transaction)
    "#{transaction.date} || || " \
    "#{transaction.debit} || " \
    "#{decimals(transaction.balance)}\n"
  end

end
