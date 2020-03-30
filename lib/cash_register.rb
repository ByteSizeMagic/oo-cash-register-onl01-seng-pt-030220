class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 0)
    @total += (price * quantity)
  end

end
