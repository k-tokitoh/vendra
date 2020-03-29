class CLI
  class Refund
    include VendingMachineUsable

    def call
      amount = vending_machine.refund
      puts "You got a refund of #{amount} yen."
    end
  end
end
