class Cash
  # ちょうどX円をつくれるか？みたいなメソッド

  def initialize
    @cash_pieces = []
  end

  def add(cash_piece)
    @cash_pieces << cash_piece
  end

  def amount
    @cash_pieces.sum(&:value)
  end

  # delegateで書く
  def clear
    @cash_pieces.clear
  end
end
