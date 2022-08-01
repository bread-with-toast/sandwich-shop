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

class Order
    attr_accessor :contents, :total_price, :reciept_wanted

    def initialize(contents, total_price, reciept_wanted)
        @contents = contents
        @total_price = total_price
        @reciept_wanted = reciept_wanted
    end

    def print_reciept()
        if reciept_wanted
            puts "\n\e[45mReciept\e[0m"
            puts "----------------"
            puts "\e[44mContents\e[0m"
            puts "----------------"
            puts contents
            puts "----------------"
            puts "\e[44mTotal Price\e[0m"
            puts "----------------"
            puts total_price
        else
            puts "A reciept was not wanted!"
        end
    end

end

mySandwich = Sandwich.new("The Big Pro Double Extra", false, 8.62, 32)
mySandwich.log

miniSandwich = Sandwich.new("The Small Lite Half Normal", true, 4.31, 16)
miniSandwich.log

orderA = Order.new(mySandwich.name, mySandwich.price, true)
orderA.print_reciept()