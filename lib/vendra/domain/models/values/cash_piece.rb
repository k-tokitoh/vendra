module Vendra
  class CashPiece
    VALUES = [10, 50, 100, 500, 1000]

    attr_reader :value

    def initialize(value)
      @value = value.to_i
    end
  end
end
