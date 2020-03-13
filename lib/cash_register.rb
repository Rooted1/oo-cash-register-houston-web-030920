
require "pry"

class CashRegister

attr_accessor :discount, :total

  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def add_item (title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount

    discount = @total * (@discount.to_f/100)
    @total = @total - discount
    if @total == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items

    arr = []
    self.add_item

    arr

  end

end
