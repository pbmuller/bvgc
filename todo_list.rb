require "./todo_item.rb"

class TodoList
	attr_reader :name, :todo_items

	def initialize(name)
		@name = name
		@todo_items = Array.new
	end

	def add_item(name)
		@todo_items.push(TodoItem.new(name))
	end

	def remove_item(name)
		#I would rather that this just return nil, but I know that in the video, they wanted this to return false if
		#the remove failed
		i = find_item(name)
		if !i.nil?
			@todo_items.delete_at(i)
			return true
		else
			return false
		end
	end

	def mark_item_complete(name)
		i = find_item(name)
		if !i.nil?
			@todo_items[i].mark_complete!
			return true
		else 
			return false
		end
	end


	def find_item(name)
		i = 0
		flag = false
		@todo_items.each do |todo_item|
			if todo_item.name == name
				flag = true
			end
			if flag
				break
			else
				i +=1
			end
		end
		if flag
			return i
		else
			return nil
		end
	end

	def print_list(kind="all")
		puts "#{name} List || #{kind}"
		puts "-" * 30
		@todo_items.each do |todo_item|
			case kind
			when "all"
				puts todo_item.to_s
			when "complete_only"
				puts todo_item.to_s if todo_item.complete?
			when "incomplete_only"
				puts todo_item.to_s if !todo_item.complete?
			else
			end
		end
		puts "\n"
	end
end

todo_list = TodoList.new("A")
todo_list.add_item("a")
todo_list.add_item("b")
todo_list.add_item("c")
todo_list.add_item("d")
todo_list.add_item("e")
todo_list.add_item("f")

i = 0

todo_list.todo_items.each do |item|
	if i % 2 == 0
		item.mark_complete!
	end
	i += 1
end


todo_list.print_list
todo_list.print_list("complete_only")
todo_list.print_list("incomplete_only")
