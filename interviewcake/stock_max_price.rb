#biggest difference where index_2 > index_1 to indicate that buy and sell time are different
#select all elements for each element s.t. their index is greater than element's index
#store all differences of those elements into an array

def best_profit (stock_prices_yesterday)
    possible_sale_combinations = stock_prices_yesterday.combination(2).to_a
    profits = []
    possible_sale_combinations.each do |pair|
        buy_price = pair[0]
        sell_price = pair[1]
        profit = sell_price - buy_price
        profits << profit
    end
    profits.sort!
    profits.count
    max_profit = profits[-1]
    if max_profit < 0
        return 0
    else
        return max_profit
    end
end

p best_profit ([400,490,300,310,300,500,550,450,340,440,430])
p best_profit ([700,600,500])
p best_profit ([700,700,700])

# O(n^2) time and O(n) space (storage of profits array)

#REFACTOR

def best_profit (stock_prices_yesterday)
    min_price = stock_prices_yesterday[0]
    max_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]

    stock_prices_yesterday.each do |stock_price|
        if stock_price <= min_price
            min_price = stock_price
        elsif (stock_price - min_price) > max_profit
            max_profit = stock_price - min_price
        end
    end
    max_profit
end

p best_profit ([400,490,300,310,300,500,550,450,340,440,430])
p best_profit ([700,600,500])
p best_profit ([700,700,700])

# O(n) time (one loop through n items of array) and O(1) space (array parameter is "free" in space)

# setting max_profit to second minus first price takes care of edge case if prices go down all day; more accurately answers question (assuming profit is revenue minus expenses, negative is the best we could do), less opinionated (leaves opinion up to user whether negative is worse), and collects better data (allows us to get a better/fuller picture)