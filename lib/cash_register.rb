class CashRegister
  attr_accessor :discount, :total, :items
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
    @transactions = []
  end
  
  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
    end
    @total += price * quantity
    @transactions << {
      title: title,
      quantity: quantity,
      amount: price * quantity
    }
  end
  
  def apply_discount
    if discount > 0 
      @total = (@total - @total * @discount/100.0).to_i 
      "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
  end
end

  def void_last_transaction
  
  
  
  
  
  
  
  
end
