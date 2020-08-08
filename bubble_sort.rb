# frozen_string_literal: true

require 'pry'

def bubble_sort(arr)
  unsorted = true
  iterations = 0

  while unsorted
    unsorted = false
    (0...(arr.length - iterations - 1)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        unsorted = true
      end
    end

    # binding.pry
    iterations += 1
  end
  arr
end
