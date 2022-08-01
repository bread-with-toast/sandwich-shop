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
        puts "\n--------------------------------------"
        puts "\e[45m Information About #{name} \e[0m"
        puts "--------------------------------------"
        if is_tasty
            puts "Is It Tasty? \e[42mYes\e[0m"
        else
            puts "Is It Tasty? \e[41mNo\e[0m"
        end

        puts "Price: #{price}"
        puts "Available: #{available}\n"

        sleep 4
    end
end 

mySandwich = Sandwich.new("The Big Pro Double Extra", false, 8.62, 32)
mySandwich.log

miniSandwich = Sandwich.new("The Small Lite Half Normal", true, 4.31, 16)
miniSandwich.log