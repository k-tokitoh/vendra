module Vendra
  class BeverageRepository
    class << self
      def store_exists?
        raise NotImplementedError
      end

      def insert(beverage)
        raise NotImplementedError
      end
    end
  end
end
