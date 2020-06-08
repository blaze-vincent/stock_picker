def stock_picker(stocks_a)
    output_arr = [0,0]
    stocks_a.each_with_index do |stock_bought, sb_index|
        stocks_potential = stocks_a.last(stocks_a.length - sb_index - 1)
        p "stocks_potential: #{stocks_potential}, stock_bought = #{stock_bought}"
        high_stock = stocks_potential.sort.last
        if high_stock - stock_bought > output_arr[1] - output_arr[0] 
            output_arr[0] = stocks_a.find_index(stock_bought)
            output_arr[1] = stocks_a.find_index(high_stock)
    end
    return output_arr
end end
p stock_picker([3,4,5,6,7])
p stock_picker([1,8,2,3,4])
