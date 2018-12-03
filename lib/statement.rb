# Statement class
class Statement
  def initialize(account)
    @account = account
  end

  def view
    show = 'Date || Credit || Debit || Balance '
    @account.history.reverse_each do |entry|
      show += entry
    end
    show
  end
end
