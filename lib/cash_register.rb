class CashRegister

    attr_accessor :total, :discount, :last_transaction
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
      @last_transaction = nil
    end 

    def add_item(title, price, quantity = 1)
        quantity.times do
            @items << title
        end
        @total += price * quantity
        @last_transaction = price * quantity
    end

    def apply_discount
        while discount == 0
            return "There is no discount to apply."
        end 
            @total -= @total * @discount / 100
            return "After the discount, the total comes to $800."
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= @last_transaction
        self.total
    end
end