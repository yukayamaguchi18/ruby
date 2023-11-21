twos = [0]
i = 1
while i <= 30
  twos << (205 * i).to_i
  i += 1
end

eights = [0]
i = 1
while i <= 40
  eights << (82 * i).to_i
  i += 1
end

threes = [0]
i = 1
while i <= 10
  threes << (30 * i).to_i
  i += 1
end

amounts = []
i = 0
j = 0
k = 0
while i <= twos.size - 1
  while j <= eights.size - 1
    while k <= threes.size - 1
      amounts << (twos[i] + eights[j] + threes[k]).to_i
      k += 1
    end
    j += 1
  end
  i += 1
end

puts amounts.uniq