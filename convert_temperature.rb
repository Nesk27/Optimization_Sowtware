puts "Input value of temperature:"
temperature = gets.to_f

puts "Input name of scale your value (C, K, F):"
scale = gets.chomp 

if (scale != "C" && scale != "K" && scale != "F")
	puts "Wrong name of scale!"
end

puts "Input new name of scale (C, K, F)"
new_scale = gets.chomp

if (new_scale != "C" && new_scale != "K" && new_scale != "F")
	puts "Wrong name of scale!"
end

if (scale == "C")
	if (new_scale == "K")
		puts "New value is #{temperature + 273.15}K"
	elsif (new_scale == "F")
		puts "New value is #{temperature * 9/5 + 32}F"
	else
		puts "New value is #{temperature}C"
	end
elsif (scale == "K")
	if (new_scale == "C")
		puts "New value is #{temperature - 273.15}C"
	elsif (new_scale == "F")
		puts "New value is #{(temperature - 273.15) * 9 / 5 + 32}F"
	else 
		puts "New value is #{temperature}K"
	end
elsif (scale == "F")
	if (new_scale == "C")
		puts "New value is #{(temperature - 32) * 5 / 9}C"
	elsif (new_scale == "K")
		puts "New value is #{(temperature - 32) / 1.8 + 273.15}F"
	else 
		puts "New value is #{temperature}F"
	end
end
