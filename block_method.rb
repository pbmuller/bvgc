def block_method
	puts "This is the first line in block_method."
	yield #This is the part of the method body that denotes this as a yeild method
	puts "This statement is after the yield method"
end

block_method do 
	puts "This is called from a block"
end