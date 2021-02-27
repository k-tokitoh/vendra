class Deposit
  class << self
    def instance
      @instance ||= (find || create)
    end

    private

    def find
      repository.find
    end

    def create
      deposit = new(repository)
      deposit.cash_pieces = []
      repository.insert(deposit)
    end

    def repository
      @repository ||= Vendra.repositories[:deposit]
    end
  end

  attr_accessor :cash_pieces

  def initialize(repository)
    @repository = repository
  end

  def insert(cash_piece)
    cash_pieces << cash_piece
    update
  end

  def update
    repository.update(self)
  end

  def total
    cash_pieces.map(&:value).sum
  end

  private

  attr_reader :repository
end
