input_line = readlines
line1 = input_line[0].split(" ").map(&:to_i)
@line2 = input_line[1].split(" ").map(&:to_i)
@amount = line1[0].to_i
@first = line1[1].to_i

$candy = []

def candy(num)
    if num == 1
        $candy.insert(0, @first)
    elsif num == @amount
        $candy[num - 1] ||= @line2[num - 1].to_i - $candy[num - 2].to_i
    else
        $candy[num - 1] ||= @line2[num - 1].to_i - $candy[num - 2].to_i - $candy[num].to_i
    end
end

i = 1
while i <= @amount
    candy(i)
    i += 1
end

puts $candy.join(" ")