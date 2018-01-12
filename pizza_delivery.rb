require_relative "menu.rb"
require_relative "order.rb"


done = false
order = Order.new
menu = Menu.new


puts "Welcome to pizza delivery company!"

#loop will run until "done" set to "true"
while not done
  puts "What can I do for you? (Put the NUMBER of choice): "
  puts "1: Order a pizza"
  puts "2: Nothing"
  puts "3: Check out (€ #{order.value})" if order.value > 0
  puts "*****************************************"

#get INPUT
choice = gets.chomp.to_i
  case choice
    when 1
      #puts "I will show you the menu"
      menu.print
      pizza = menu.make_choice
      order.add(pizza)
    when 2
      done = true
  else
    puts "Sorry, dont understand you, is it was \'1 of \'2? "
 end


#say by to customer
  if done
  puts "Thank you for visit! See you soon!"
  puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _ \"-._"
    puts "||    _ (_)    '-."
    puts "||   (_)   __..-'"
    puts " \\__..--\"\""
  end
end
