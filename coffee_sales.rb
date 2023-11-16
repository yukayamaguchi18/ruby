input_line = readlines
amount = input_line[0].to_i
prices = input_line[1].split.map(&:to_i)
total = []
i = 0
while i < amount do
    k = i + 2
    if input_line[k].chomp == "SS"
        total.push(prices[0] / 2)
    elsif input_line[k].chomp == "S"
        total.push(prices[0])
    elsif input_line[k].chomp == "M"
        total.push(prices[1])
    elsif input_line[k].chomp == "L"
        total.push(prices[2])
    elsif input_line[k].chomp == "LL"
        total.push(prices[2] * 2)
    else
    end
    i += 1
end
puts total.sum