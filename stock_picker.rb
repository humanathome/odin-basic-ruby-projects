def stock_picker(stock_prices)
  return "No potential profit found." if stock_prices.uniq.size <= 1 || stock_prices == stock_prices.sort.reverse

  lowest_price = stock_prices[0]
  lowest_price_index = 0
  days_for_purchase = []
  profit = 0

  stock_prices.each_with_index do |current_price, idx|
    # buy value
    if current_price < lowest_price
      lowest_price = current_price
      lowest_price_index = idx
    end

    # sell value
    if profit < current_price - lowest_price
      profit = current_price - lowest_price
      days_for_purchase = lowest_price_index, idx
    end
  end

  "Buy at day #{days_for_purchase[0]} and sell at day #{days_for_purchase[1]} for a profit of #{profit}"
end

p stock_picker([5, 11, 6, 2, 10, 1, 4])  # => "Buy at day 3 and sell at day 4 for a profit of 8"
p stock_picker([17, 3, 6, 9, 15, 8, 5, 1, 10])  # => "Buy at day 1 and sell at day 4 for a profit of 12"
p stock_picker([3, 432, 7, 7, 7, 1, 2, 3, 5])   # => "Buy at day 0 and sell at day 1 for a profit of 429"
p stock_picker([2, 1, 1, 2])  # => "Buy at day 1 and sell at day 3 for a profit of 1"
p stock_picker([1, 1, 1, 1])  # => "No potential profit found."
p stock_picker([1, 2])  # => "Buy at day 0 and sell at day 1 for a profit of 1"
p stock_picker([])  # => "No potential profit found."
p stock_picker([0, 0, 0, 1])  # => "Buy at day 0 and sell at day 3 for a profit of 1"
p stock_picker([2, 1, 0])  # => "No potential profit found."
