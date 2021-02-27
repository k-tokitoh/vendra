module Vendra
  class Beverage
    class << self
      def create(name, price)
        beverage = new(name, price)
        repository.insert(beverage)
      end

      def repository
        @repository ||= Vendra.repositories[:beverages]
      end

      def initialize
        seed unless repository.store_exists?
      end

      private

      def seed
        5.times { repository.insert(new("cola", 120)) }
      end
    end

    def initialize(name, price)
      @name = name
      @price = price
    end
  end
end
