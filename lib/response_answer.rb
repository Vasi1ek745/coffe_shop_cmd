require_relative 'order'
class ResponseAnswer
	include Order
	attr_accessor :answer, :add_order

 		def check_comand(answer)
 			
 			comand = answer.split[0]
 			name_order = answer.split[1]
 			quantity = answer.split[2]

 			case comand

 			when "help"
 				
 			when "order"
 				if check_name_order(name_order)
 					order(name_order,quantity)
 				else 
 					Menu.wrong_name 
 				end
 			when "cart"
 				Menu.cart
 			when "exit"
 				`exit`
 				abort
 			else 
 				Menu.wrong_comand

 			end	
 			
 		end

end