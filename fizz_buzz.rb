def fizz_buzz(number)
  if number % 15 == 0
    "fizzBuzz"# ここにFizzBuzzプログラムの処理を書いてください
  elsif number % 3 == 0
    "fizz"# ここにFizzBuzzプログラムの処理を書いてください
  elsif number % 5 == 0
    "Buzz"# ここにFizzBuzzプログラムの処理を書いてください
  else
    "#{number}"
  end
end

puts "数字を入力してください。"

input = gets.to_i

puts "結果は..."
puts fizz_buzz(input)