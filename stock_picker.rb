# frozen_string_literal: true

def stock_picker(arr)
  max_profit = 0
  result = []

  (0...arr.length).each do |i|
    ((i + 1)...arr.length).each do |j|
      profit = arr[j] - arr[i]
      if profit > max_profit
        max_profit = profit
        result = [i, j]
      end
    end
  end
  result
end

puts stock_picker([40, 3, 6, 9, 8, 8, 6, 10, 1])
