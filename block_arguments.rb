def get_name
	print "Enter your name: "
	name = gets.chomp
	yield name
end

get_name do |name|
	print "That's a cool name, #{name}"
end