car1_speed = 500
car2_speed = 300

print "Speed modifier for car 2: "
speed_mod = gets.to_i

car2_speed += speed_mod

=begin
So this stuff doesn't work because there is an operator after the when. In these variety of if statements
where you are checking how numbers compare to one another, I think that it would be better in most cases to
use if statements still. 

case car1_speed
	when > car2_speed
		puts "car 1 is faster than car 2"
	when < car2_speed
		puts "car 2 is faster than car 1"
	else
		puts "car 1 is just as fast as car 2"
end
=end