class CashPiece
  AVAILABLE_VALUES = [10, 50, 100, 500, 1000]

  class << self
    def generate(value)
      instance = new(value)
      instance.valid? ? instance : nil
    end

    private :new
  end

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def valid?
    AVAILABLE_VALUES.include?(value)
  end
end
