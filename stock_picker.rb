def stock_picker(stock_prices)
  possible_days = {}
  stock_prices.combination(2) do |combination|
    price_difference = combination.first - combination.last
    possible_days[combination] = price_difference if price_difference.negative?
  end
  best_price = possible_days.key(possible_days.values.min)
  best_price.map { |price_day| stock_prices.index(price_day) }
end

# buy before sell
# days start with 0

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]


p stock_picker(stock_prices)