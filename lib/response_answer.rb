class ResponseAnswer
	attr_accessor :answer, :add_order, :need_update_cart

		def initialize
			@add_order = {}
			@answer = 'greetings'
			@need_update_cart = false
		end

 		def check_comand(answer)
 			
 			comand = answer.split[0]
 			name_order = answer.split[1]
 			quantity = answer.split[2].to_i || 1

 			case comand

 			when "help"
 				@need_update_cart = false
 				
 			when "order"
				
				if check_name(name_order) && check_quantity(quantity)	

 					@need_update_cart = true
 					@add_order['name_order'] = name_order 	
 					@add_order['quantity'] = quantity
 				else
 					@answer['fail'] = 'Неправильно введено название или количество'

 				end
 			when "cart"
 				
 			when "exit"
 			
 			else 
 				@answer = 'wrong_comand'
 			end	
 			
 		end
	 	def check_name(name_order)
 			menu_hash = {"espresso"=>100,"greentea"=>100,"americano"=>100,"blacktea"=>100,
 			"cappuccino"=>100,"matcha"=>100,"irish"=>100,"juice"=>100,"latte"=>100,"sandwich"=>100,"flatwhite"=>100}


 			menu_hash.has_key?(name_order.downcase)

 		end
 		def check_quantity(quantity)
 			return false if quantity > 50 || quantity <= 0
 			true
 		end

end