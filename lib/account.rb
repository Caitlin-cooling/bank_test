class Account

  attr_reader :history

  def initialize
    @history = ["Date || Credit || Debit || Balance"]
  end

  def show_history
    @history.each do |entry|
      return entry
    end
  end
end
