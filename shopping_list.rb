def create_list
	print "What is the name of the list? "
	name = gets.chomp

	hash = {"name" => name, "items" => Array.new }
	return hash
end

def get_list_quantity
	print "how many items are going to be on your list? "
	return gets.chomp.to_i
end

def add_list_item
	print "What is the item called? "
	item_name = gets.chomp

	print "What is the quantity of the #{item_name}? "
	quantity = gets.chomp.to_i

	hash = { "name" => item_name, "quantity" => quantity}
	return hash
end

def print_seperator(character="-")
	puts character * 80
end

def print_list(list)
	puts "List: #{list["name"]}"
	print_seperator

	list["items"].each do |item|
		puts "\tName: #{item["name"]}\t\t\t" + "Quantity: #{item["quantity"]}"
		print_seperator
	end
end


list = create_list()
puts list.inspect
for i in 1..get_list_quantity
	list["items"].push(add_list_item())
end

puts list.inspect
print_list(list)