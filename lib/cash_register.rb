class CashRegister
    #macros accessor 
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = [] 
    end

        #instance method add_item
    def add_item(title,amount,quantity = 1)
        self.last_transaction = amount * quantity
        self.total += self.last_transaction
        quantity.times { self.items << title}
    end

    #instant method apply discount 
    def apply_discount
        if self.discount != 0
            self.total = (self.total * (100.0 - self.discount.to_f) / 100).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

end
