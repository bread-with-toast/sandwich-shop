class Sandwich
    attr_accessor :is_tasty, :price, :available

    def initialize(is_tasty, price, available)
        @is_tasty = is_tasty
        @price = price
        @available = available
    end

    def sell(amount)
        @available -= amount
        puts "\e[41mAvailable Now: #{@available}\e[0m"
    end

    def make(amount)
        @available += amount
        puts "\e[42mAvailable Now: #{@available}\e[0m"
    end
end 

mySandwich = Sandwich.new(true, 8.62, 32)
mySandwich.sell(3)
mySandwich.make(2)
