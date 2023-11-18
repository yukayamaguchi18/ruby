input_line = readlines
line1 = input_line[0].split(" ").map(&:to_i)
@line2 = input_line[1].split(" ").map(&:to_i)
@amount = line1[0].to_i
@first = line1[1].to_i

$candy = []

def candy(num)
    if num == 0
        $candy[0] ||= @first
    elsif num == 1
        $candy[1] ||= @line2[0].to_i - @first
    else
        $candy[num] ||= @line2[num - 1].to_i - $candy[num - 2].to_i - $candy[num - 1].to_i
    end
end

i = 0
while i <= @amount - 1
    candy(i)
    i += 1
end

puts $candy.join(" ")