class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0) 
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
      quantity.times do @items << title
    end 
    @last_transaction << [price, quantity]
  end
  
  def apply_discount
    if @discount != 0  
      @total = @total * (1 - @discount / 100.0)
    "After the discount, the total comes to $#{total.to_i}."
    
  else 
    "There is no discount to apply."
  end
end 
  
  def void_last_transaction
    last = @last_transaction.pop
    @total -= last[0] * last[1] 
    last[1].times do @items.pop
  end
    
    
  end
  
end
