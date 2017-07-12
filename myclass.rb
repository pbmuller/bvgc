class Name
	attr_accessor :title, :first_name, :middle_name, :last_name
	#use attr_writer if you think that you will need to change the value of an instance variable
	#use attr_accessor if you ever need to create both an attr_reader, and an attr_writer

	def initialize(title="Ms.", first_name="Paige", middle_name="Brenda", last_name="Muller")
		@title=title
		@first_name=first_name
		@middle_name=middle_name
		@last_name=last_name
	end

	def full_name
		return "#{@title} #{@first_name} #{@middle_name} #{last_name}"
	end

	def to_s
		full_name
	end
end

name = Name.new

puts name
puts name.inspect