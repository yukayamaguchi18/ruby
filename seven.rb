min = 7
max = 7777777
count = 0

(min..max).step(min).each do |num| # 7～7777777まで7を足し続ける=7の倍数
  count += num.to_s.count('7') # numの数字にいくつ7が含まれるか計算　count変数に追加する
end

puts "数字「7」は、#{count}回現れます。"