grocery_list = ["bones", "avocado", "bananas", "kale", "eggs", "salmon"]

new_list = grocery_list.map{|item| "* " + item}
puts new_list
puts "\n"

new_list << "* rice"
puts "I forgot the rice! Here's the new list: #{new_list}" + "\n\n"
puts "#{grocery_list.count} items in my grocery list!" + "\n\n"
puts "Are there bananas? " + grocery_list.include?("bananas").to_s + "\n\n"

sorted_list = new_list.sort
puts sorted_list

puts "\n\n I can't find any Salmon! Better delete it from my list. \n\n"
sorted_list.pop
puts "Here is my new list! \n\n"
puts sorted_list