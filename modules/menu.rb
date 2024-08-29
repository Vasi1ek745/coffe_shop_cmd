class Main
	module Menu

	  def greetings
	  		Menu.header
	        puts Rainbow("   Добрый день! Хотите кофе?\n").green.bright
	        puts Rainbow("   Навигация осуществляется через меню(menu) или основными командами(help)\n").green.bright
	        comand = gets.chomp
	        ResponseAnswer.check_comand(comand)
	  end

	  def help
	  	Menu.header
       
	  	puts Rainbow("\n   Список основных команд\n").bright.green
		puts Rainbow(File.read(PATH + "/image/base_comand")).bright
		comand = gets.chomp.downcase
		ResponseAnswer.check_comand(comand)
	  end

	  def autorization_question
	  	puts Rainbow("   Вы не авторизованы. Хотите авторизоваться? Сможете копить балы и мгновенно заказывать свою постоянную позицию").bright.red

	  end

	  def menu
	  	Menu.header
		puts Rainbow("Выберите цифру").bright.red
		puts Rainbow(File.read(PATH + "/image/navigation")).green
		comand = gets.chomp.downcase
		ResponseAnswer.check_comand(comand)

	  end
	  def repeat
	  	Menu.header
	  	puts Rainbow("   Неправильное название заказа\n").red.bright
	  	puts Rainbow("   Воспользуйтесь меню(menu) или основными командами(help)\n").green.bright
	  	comand = gets.chomp.downcase
		ResponseAnswer.check_comand(comand)

	  end
	  def order_from_menu
	  	Menu.header

	  end
	  def header
		    system("clear") || system("cls")
			puts Rainbow(File.read(PATH + "/image/coffe_shop")).green.bright
			puts Rainbow(File.read(PATH + "/image/menu")).green.blink
			puts Rainbow(File.read(PATH + "/image/coffe_list")).bright.red
			puts "-"*100	
	  end


	  	module_function(
	  		:greetings,
	  		:autorization_question,
	  		:help,
	  		:menu,
	  		:repeat,
	  		:header,
	  		:order_from_menu
  			)
	  	



	end
end