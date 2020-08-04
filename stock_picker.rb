def stock_picker(arr)

  max_profit = 0
  result = []

  for i in 0...arr.length
    for j in (i + 1)...arr.length

      buy_price = arr[i]
      sale_price = arr[j]
      profit = sale_price - buy_price

      if profit > max_profit
        max_profit = profit
        result = [i, j]
      end

    end
  end
  result
end

puts stock_picker([40,3,6,9,8,8,6,10,1])