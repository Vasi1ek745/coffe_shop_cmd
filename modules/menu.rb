class Main
	module Menu

	  def greetings
		  	system("clear") || system("cls")
			puts Rainbow(File.read("image/coffe_shop")).green.bright
			puts Rainbow(File.read("image/menu")).green.blink
			puts Rainbow(File.read("image/coffe_list")).bright.red
	        puts Rainbow("   Добрый день! Хотите кофе?\n").green.bright
	        puts Rainbow("   Навигация осуществляется или через меню(menu) или основными командами(help)\n").green.bright
	        comand = gets.chomp
	        ResponseAnswer.check_comand(comand)
	  end

	  def help
	  	system("clear") || system("cls")
		puts Rainbow(File.read("image/menu")).green.blink
		puts Rainbow(File.read("image/coffe_list")).bright.red
       
	  	puts Rainbow("\n   Список основных команд\n").bright.green
		puts Rainbow(File.read("image/base_comand")).bright
		comand = gets.chomp
		ResponseAnswer.check_comand(comand)
	  end

	  def autorization_question
	  	puts Rainbow("   Вы не авторизованы. Хотите авторизоваться? Сможете копить балы и мгновенно заказывать свою постоянную позицию").bright.red

	  end

	  def menu
	  	system("clear") || system("cls")
		puts Rainbow(File.read("image/menu")).green.blink
		puts Rainbow(File.read("image/coffe_list")).bright.red
		puts Rainbow("Выберите цифру").bright.red
		puts Rainbow(File.read("image/navigation")).green
		comand = gets.chomp
		ResponseAnswer.check_comand(comand)

	  end



	  	module_function(
	  		:greetings,
	  		:autorization_question,
	  		:help,
	  		:menu
	  		)
	  	



	end
end