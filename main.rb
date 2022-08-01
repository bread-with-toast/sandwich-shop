class Sandwich
    attr_accessor :name, :is_tasty, :price, :available

    def initialize(name, is_tasty, price, available)
        @name = name
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

    def log()
        puts "\n\e[45mInformation About #{name}\e[0m"
        puts "--------------------------------------\n"
        puts "Is It Tasty: #{is_tasty}"
        puts "Price: #{price}"
        puts "Available: #{available}\n"
    end
end 

mySandwich = Sandwich.new("The Big Pro Double Extra", true, 8.62, 32)
mySandwich.log