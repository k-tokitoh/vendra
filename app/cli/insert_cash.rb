class CLI
  class InsertCash
    include VendingMachineUsable

    def call(cash_unit_value)
      cash_unit = CashUnit.generate(cash_unit_value.to_i)
      if cash_unit.nil?
        puts "Given #{cash_unit_value} yen coin/bill is returned because it is invalid. The value must be one of #{CashUnit::AVAILABLE_VALUES.join(", ")}."
        return
      end

      vending_machine.add_deposit(cash_unit)
      puts "total deposit: #{vending_machine.deposit_amount}"
    end
  end
end
