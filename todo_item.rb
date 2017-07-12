class TodoItem
	attr_reader :name

	def initialize(name)
		@name = name
		@complete = false
	end

	def mark_complete! #This denotes a bang method, which modifies the internal state of the object
		@complete = true
	end

	def complete? #This denotes methods that return booleans
		@complete
	end

	def mark_incomplete!
		@complete = false
	end

	def to_s
		if complete?
			"[C] #{@name}"
		else
			"[IC] #{@name}"
		end
	end
end