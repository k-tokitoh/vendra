class CLI
  class Insert
    include VendingMachineUsable

    def call(cash_piece_value)
      cash_piece = CashPiece.generate(cash_piece_value.to_i)
      if cash_piece.nil?
        STDERR.puts "Given #{cash_piece_value} yen coin/bill is returned because it is invalid. The value must be one of #{CashPiece::AVAILABLE_VALUES.join(", ")}."
        exit(false)
      end

      vending_machine.add_deposit(cash_piece)
      puts "total deposit: #{vending_machine.deposit_amount}"
    end
  end
end
