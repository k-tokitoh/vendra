require 'singleton'

class VendingMachine
  include Singleton

  def initialize
    @deposit = Cash.new
    # @sales = Cash.new
  end

  def add_deposit(cash_piece)
    @deposit.add(cash_piece)
  end

  def deposit_amount
    @deposit.amount
  end

  def refund
    amount = @deposit.amount
    @deposit.clear
    amount
  end

  def beverages
    Beverage.all
  end
end
