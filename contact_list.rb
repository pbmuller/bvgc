=begin
	So, here are some of my thoughts as to how this is going to work. 
	Going to need an array of hashes, where each hash is going to be the contact
	The contact hash will have a name and a phone number.

=end

def create_array
	return Array.new
end

def add_contact
	contact = Hash.new
	print "What is the person's name? "
	name = gets.chomp
	contact["name"] = name

	answer = ""
	number_count = 1
	while answer != "n"
		until answer == "y" || answer == "n"
			print "Would you like to add a phone number? (y/n)"
			answer = gets.chomp.downcase
			print "enter either y or n\n" if answer != "y" && answer != "n"
		end
		if answer == "y"
			print "Enter the phone number: "
			number = gets.chomp
			contact["number_#{number_count}"] = number
			number_count += 1
			answer = ""
		end
	end

	return contact
end

def print_seperator(character="-")
	puts character*80
end

def print_contact_list(contact_list)
	print "Contact List\n"
	print_seperator
	contact_list.each do |contact|
		contact.each do |key, value|
			puts "\t#{key}: #{value}"
		end
		print_seperator
	end
end


contact_list = create_array
answer = ""
until answer == "n"
	answer = ""
	contact_list.push(add_contact)
	until answer == "y" || answer == "n"
		print "Would you like to add another contact? (y/n)"
		answer = gets.chomp.downcase
		print "enter either y or n\n" if answer != "y" && answer != "n"
	end
end

print_contact_list(contact_list)