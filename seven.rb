min = 7
max = 7777777
count = 0

(min..max).step(min).each do |num|
  count += num.to_s.count('7')
end

puts "数字「7」は、#{count}回現れます。"