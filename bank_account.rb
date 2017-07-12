class BankAccount
	attr_reader :name, :transactions

	def initialize(name)
		@name = name
		@transactions = Array.new
		add_transaction("Beginning Balance", 0)
	end

	def credit(description, amount)
		add_transaction(description, amount)
	end

	def debit(description, amount)
		add_transaction(description, -amount)
	end

	def add_transaction(description, amount)
		@transactions.push(description: description, amount: amount)
	end

	def balance
		balance = 0
		@transactions.each do |item|
			balance += item[:amount]
		end
		return balance
	end

	def print_register
		puts "Name: #{@name}"
		transactions.each do |transaction|
			puts "description: #{transaction[:description]}".ljust(35) + "amount: #{sprintf("$%0.2f", transaction[:amount])}".rjust(10)
		end
		puts "balance: #{sprintf("$%0.2f", balance)}"
	end

	def to_s
		"#{@name}, balance: #{sprintf("$%0.2f", balance)}"
	end
end

bank_account = BankAccount.new("Paige")
bank_account.credit("paycheck", 100)
bank_account.debit("hormones", 40)
bank_account.print_register