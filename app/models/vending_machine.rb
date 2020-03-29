require 'singleton'

class VendingMachine
  include Singleton

  attr_reader :beverages

  def initialize
    @beverages = [Beverage.new(:cola, 120, 5)]
    @deposit = Cash.new
    # @sales = Cash.new
  end

  def add_deposit(cash_unit)
    @deposit.add(cash_unit)
  end

  def deposit_amount
    @deposit.amount
  end

  def refund
    amount = @deposit.amount
    @deposit.clear
    amount
  end
end
