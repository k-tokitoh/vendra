class CLI
  module VendingMachineUsable
    private

    def vending_machine
      @vending_machine ||= VendingMachine.instance
    end
  end
end
