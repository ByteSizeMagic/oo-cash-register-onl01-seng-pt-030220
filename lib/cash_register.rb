class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    end
  end

  def apply_discount
    if @discount != nil
      @total -= @total / (100 / @discount)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
