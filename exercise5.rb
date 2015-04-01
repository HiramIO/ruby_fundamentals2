def temperature(f)
    cels = (f - 32) * 5/9
end

puts "What temperature is it in Farenheit?"
f = gets.chomp.to_i
celsius = temperature(f)
puts "If it is #{f} right now, then the temperature is #{celsius} degrees celsius"