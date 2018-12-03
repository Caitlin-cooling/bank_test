# Statement class
class Statement
  def initialize(account)
    @account = account
  end

  def view
    text = "Date || Credit || Debit || Balance\n"
    @account.history.reverse_each do |entry|
      text += entry
    end
    text
  end
end
