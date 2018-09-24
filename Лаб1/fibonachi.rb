def fibonachi(n)
	if (n == 1 || n == 2)
		return 1
	end
	return fibonachi(n - 1) + fibonachi(n - 2)
end

puts "Input number of months:"
months = gets.to_i

puts "Number pairs of ships = #{fibonachi months}" 