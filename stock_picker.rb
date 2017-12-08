#Project 2, Stock Picker
def stock_picker (prices)
    best_buy = 0
    best_sell = 0
    prev_buy = best_buy
    prev_sell = best_sell
    profit = prices[best_sell] - prices[best_buy]
    prices.each_with_index do |current_price, index|
        if prices[prev_sell] < current_price
            prev_sell = index
        end
        if prices[prev_buy] > current_price
            prev_buy = index
            prev_sell = index
        end
        if prices[prev_sell] - prices[prev_buy] > profit
            best_buy = prev_buy
            best_sell = prev_sell
            profit = prices[prev_sell] - prices[prev_buy]
        end
    end
    return [best_buy, best_sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])
