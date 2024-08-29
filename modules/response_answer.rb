class Main
	module ResponseAnswer

 		def check_comand(answer)

 			# Menu.autorization_question if !Autorization.check
 			
 			comand = answer.split[0]
 			name_order = answer.split[1]
 			quantity = answer.split[2]
 			case comand

 			when "help"
 				Menu.help
 			when "order"

 				if Order.check_name_order(name_order)
 					
 					if name_order && quantity
 						Order.order(name_order,quantity)
 					elsif name_order
 						Order.quantity(name_order)
 					else

 					end
 				else 
 					Menu.repeat 
 				end
 
 			when "exit"
 				abort


 			end	
 			Menu.greetings



 		end

 		module_function(
 			:check_comand
 			)
 	end

end