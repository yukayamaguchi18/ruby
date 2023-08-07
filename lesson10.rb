class Car
  def self.run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Sub_Car < Car
end

sub_car = Sub_Car.new
Sub_Car.run(5)