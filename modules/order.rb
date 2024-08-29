class Main
 
 module Order

 	
 	def order(name_order, quantity)
 		
 		@cart ||= Cart.new
 		@cart.order[name_order] = quantity 
 		puts "Ваш заказ"
 		@cart.order_all_with_money
 		puts "Еще что нибудь? y/n"
 		answer = gets.chomp

 		if answer.downcase == "да" || answer.downcase == "y"
 			Menu.greetings
 		else
 			puts "С вас столько то денег!"
 		end
 	end

 	def quantity(name)
 		puts "Сколько штук хотите заказать?"
 		comand = gets.chomp.to_i
 		while 	comand < 0
 			puts "введите число"
	 		comand = gets.chomp.to_i
 		end
 		order(name, comand)
 	end
 	
 	def check_name_order(name_order)
 		menu_hash = {
		"espresso"=>100,
		"greentea"=>100,
		"americano"=>100,
		"blacktea"=>100,
		"cappuccino"=>100,
		"matcha"=>100,
		"irish"=>100,
		"juice"=>100,
		"latte"=>100,
		"sandwich"=>100,
 		"flatwhite"=>100
		}


 		menu_hash.has_key?(name_order.downcase)

 	end





 	module_function(
 		:order,
 		:quantity,
 		:check_name_order
 		)

 end

end