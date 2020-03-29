class CLI < Thor
  desc "setup", "Set up this application."
  def setup
    Setup.new.call
  end

  desc "insert VALUE_OF_COIN_OR_BILL", "Insert coin/bill to the vending machine."
  def insert(cash_piece_value)
    Insert.new.call(cash_piece_value)
  end

  desc "refund", "Refund deposit."
  def refund
    Refund.new.call
  end

  desc "beverages", "Show the list of beverages in the vending machine."
  def beverages
    Beverages.new.call
  end

  desc "console", "(Only in development mode) Launch console."
  def console
    # TODO: ENVに応じて弾く
    binding.pry
  end
end
