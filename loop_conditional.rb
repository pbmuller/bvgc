random_number = Random.new.rand(5)
loop do
	print "Guess the number between 0 and 5 (e to exit): "
	answer = gets.chomp
	if (answer == "e")
		puts "the answer was #{random_number}"
		break
	elsif answer == random_number.to_s
		puts "you guessed correctly"
		break
	else
		puts "try again"
	end
end