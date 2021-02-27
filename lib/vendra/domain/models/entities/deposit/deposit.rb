module Vendra
  class Deposit
    class << self
      def instance
        @instance ||= (find || create)
      end

      def repository
        @repository ||= Vendra.repositories[:deposits]
      end

      private

      def find
        repository.find
      end

      def create
        deposit = new
        deposit.cash_pieces = []
        repository.insert(deposit)
      end
    end

    attr_accessor :cash_pieces

    def insert(cash_piece)
      cash_pieces << cash_piece
      update
    end

    def update
      self.class.repository.update(self)
    end

    def total
      cash_pieces.map(&:value).sum
    end
  end
end
