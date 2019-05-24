require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @items << (title * quantity)
  end

  def apply_discount
    if discount != 0
      @total -= @total * (self.discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

end
