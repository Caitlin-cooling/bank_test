require './lib/formatting.rb'

# Account class
class Account
  attr_reader :history

  def initialize
    @history = []
    @balance = 0
  end

  def add(transaction)
    @transaction = transaction
    update_balance
    @history << transaction
  end

  private

  def update_balance
    if @transaction.deposit?
      @balance += @transaction.credit.to_i
    else
      @balance -= @transaction.debit.to_i
    end
    @transaction.balance = @balance
  end
end
