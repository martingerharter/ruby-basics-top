# this is incomplete and does not work properly

puts "This is a stockpicker. You feed it an array of numbers and it will give you the best combination of buy and then sell"



def stock_picker(stocks)
    p stocks
    day = 0
    result = 0
    buy = 0
    sell = 0
    temp = 0

    p "test 1: #{stocks.index()}"
    p "test 2: #{stocks[6]}"

    loop do
        stocks.each_with_index do |x, index|
            unless index < day
                #p "It's day #{day} buying at #{stocks[day]} and selling on day #{index} for #{x}"
                temp = x - stocks[day]
                if temp >= result
                    p "Updated #{result} to #{temp} "
                    result = temp
                    buy = stocks[day]
                    sell = index
                    p "Update time #{buy} "
                end
                #p "Profit will be #{temp}"
            end
        end

        day += 1
        break if day >= stocks.length
    end
    
    p " --- below is the result ---- "
    p result
    p "Buy on day #{buy} and sell on #{sell}" 
end

stocks = [17,3,6,9,15,8,6,1,10]
stock_picker(stocks)

