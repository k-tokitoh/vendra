class CLI
  class Insert
    include VendingMachineUsable

    def call(cash_unit_value)
      cash_unit = CashUnit.generate(cash_unit_value.to_i)
      if cash_unit.nil?
        STDERR.puts "Given #{cash_unit_value} yen coin/bill is returned because it is invalid. The value must be one of #{CashUnit::AVAILABLE_VALUES.join(", ")}."
        exit(false)
      end

      vending_machine.add_deposit(cash_unit)
      puts "total deposit: #{vending_machine.deposit_amount}"
    end
  end
end
