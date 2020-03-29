class CLI < Thor

  def self.exit_on_failure?
    true
  end

  desc "insert VALUE_OF_COIN_OR_BILL", "Insert coin/bill to the vending machine."
  def insert(cash_unit_value)
    Insert.new.call(cash_unit_value)
  end

  desc "refund", "Refund deposit."
  def refund
    Refund.new.call
  end

  desc "beverages", "Show the list of beverages in the vending machine."
  def beverages
    Beverages.new.call
  end
end
