def stock_picker(prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0

  (0...prices.length).each do |i|
    (i + 1...prices.length).each do |j|
      profit = prices[j] - prices[i]
      next unless profit > max_profit

      max_profit = profit
      buy_day = i
      sell_day = j
    end
  end

  max_profit.positive? ? [buy_day, sell_day] : nil
end
