require 'csv'

arr_of_arrs = CSV.read("money.csv")

array = arr_of_arrs[0]

for i in 0..(array.size - 1)
	array[i] = array[i].to_f
end

variant = -1

until variant == 0
	puts "Hello! What you wann do?", "Press 1 - max", "Press 2 - min", "Press 3 - average",
		"Press 4 - FSV", "Press 0 - Exit"
	variant = gets.to_i


	if variant == 1
		puts "Max = #{array.max}"
	elsif variant == 2
		puts "Min = #{array.min}"
	elsif variant == 3
		puts "Average = #{array.sum / array.size.to_f}"
	elsif variant == 4
		average =  array.sum / array.size.to_f
		res = 0
		for i in 0..(array.size - 1)
			res = res + (array[i] - average) ** 2
		end
		res = res * (1 / (array.size.to_f - 1))
		puts res
	end
end