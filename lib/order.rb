 module Order 	
 	def order(name_order, quantity)
 		
 		
 		quantity||= 1
 		binding.pry
 		if @cart.already_added?(name_order)
 			@cart.order[name_order] += quantity.to_i  
 		else 
 			@cart.order[name_order] = quantity.to_i 
 		end

 		puts "Ваш заказ"
 		@cart.order_all
 		puts "Еще что нибудь? y/n"
 		answer = gets.chomp
 		if answer.downcase == "да" || answer.downcase == "y"
 			Menu.greetings
 		else
 			puts "Ваши покупки"
 			puts @cart.order_all
 			puts "С вас столько то денег!"
 		end
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
 end
