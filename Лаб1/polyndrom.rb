puts "Input word, which need be chek for polyndrom"

word = gets.chomp

if (word.upcase == word.upcase.reverse)
	puts "#{word} is Polyndrom"
else
	puts "#{word} is not Polyndrom"
end