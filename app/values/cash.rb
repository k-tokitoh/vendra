class Cash
  # ちょうどX円をつくれるか？みたいなメソッド

  def initialize
    @cash_units = []
  end

  def add(cash_unit)
    @cash_units << cash_unit
  end

  def amount
    @cash_units.sum(&:value)
    # @money_units.sum...でいけるか？ブロックわたせるんだっけか？
  end

  # delegateで書く
  def clear
    @cash_units.clear
  end
end
