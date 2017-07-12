answer = ""
until answer == "no"
	print "Do you want this loop to continue? (no to exit)"
	answer = gets.chomp.downcase
end
