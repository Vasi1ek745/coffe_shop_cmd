class Cart
	attr_accessor :order_list
		def initialize
			@order_list = {}
		end
		def update(add_order,need_update_cart)

			if need_update_cart
				order = add_order['name_order']
				quantity = add_order['quantity']
				if already_added?(order)
					@order_list[order] += quantity.to_i
				else 
					@order_list[order] = quantity.to_i
		
				end 
			else 
			 
			end
		end




		def order_all
			@order.each {|k,v| puts "#{k}----#{v}шт"}

		end
		def already_added?(name_order)
			@order_list.has_key?(name_order)
	 	end
	 	def check

	 	end
 	 	def order(name_order, quantity)
 		
 			if @cart.already_added?(name_order)
	 			@cart.order[name_order] += quantity 
	 		else 
	 			@cart.order[name_order] = quantity
	 		end


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
 		menu_hash = {"espresso"=>100,"greentea"=>100,"americano"=>100,"blacktea"=>100,
 			"cappuccino"=>100,"matcha"=>100,"irish"=>100,"juice"=>100,"latte"=>100,"sandwich"=>100,"flatwhite"=>100}


 		menu_hash.has_key?(name_order.downcase)

 	end
end
