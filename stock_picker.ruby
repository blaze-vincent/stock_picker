def stock_picker(stocks_a)
    output_arr = [0,0]
    stocks_a.each_with_index do |stock_bought, sb_index|
        stocks_potential = stocks_a.last(stocks_a.length - sb_index)
        high_stock = stocks_potential.sort.last
        if (high_stock - stock_bought) > (stocks_a[output_arr[1]] - stocks_a[output_arr[0]]) 
            output_arr[0] = stocks_a.find_index(stock_bought)
            output_arr[1] = stocks_a.find_index(high_stock)
        end
    end
    return output_arr
end
p stock_picker([100, 1, 2, 5])
