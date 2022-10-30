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

end
