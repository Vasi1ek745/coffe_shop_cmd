class Main
	module ResponseAnswer

 		def check_comand(comand)

 			# Menu.autorization_question if !Autorization.check
 			
 			name_order = comand.split[1]
 			quantity = comand.split[2]
 			comand = comand.split[0]
 			case comand
 			when "menu"
 				Menu.menu
 			
 			when "help"
 				Menu.help
 			when "order", "1"
 				if comand.split[1]


 			end	




 		end

 		module_function(
 			:check_comand
 			)
 	end

end