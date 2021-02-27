module Vendra
  class DepositRepository
    class << self
      def insert(deposit)
        raise NotImplementedError
      end

      def find
        raise NotImplementedError
      end

      def update(deposit)
        raise NotImplementedError
      end
    end
  end
end
