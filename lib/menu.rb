class Menu
	attr_accessor :step, :continue
	PATH = File.dirname(__FILE__)
	def initialize
		@step = 'greetings'
		@continue = true
	end
	def chose_step
		case @step
		when 'greetings'
			greetings
		when 'help'
			help
		when 'cart'
		
			
		end
	end



	def greetings
	  		header
	        puts Rainbow("   Добрый день! Хотите кофе?\n").green.bright
	        puts Rainbow("   Для заказа используйте order <название> <количество> # order espresso 2\n").green.bright
	        puts Rainbow("   help для помощи\n").green.bright
	      
	  end

	  def help
	  	Menu.header
       
	  	puts Rainbow("\n   Список основных команд\n").bright.green
		puts Rainbow(File.read(PATH + "/image/base_comand")).bright
		comand = gets.chomp.downcase
		binding.pry
		self.check_comand(comand)
	  end

	  def autorization_question
	  	puts Rainbow("   Вы не авторизованы. Хотите авторизоваться? Сможете копить балы и мгновенно заказывать свою постоянную позицию").bright.red

	  end

	  def cart
	  	puts "В корзине"
	  	
 		puts @cart.order_all
		comand = gets.chomp.downcase
		ResponseAnswer.check_comand(comand)
	  end


	  def wrong_comand
	  	Menu.header
	  	puts Rainbow("   Неправильная команда, используйте help\n").red.bright
	  	comand = gets.chomp.downcase
		ResponseAnswer.check_comand(comand)

	  end
	  def wrong_name
	  	Menu.header
	  	puts Rainbow("   Неправильнно введено название, попробуйте еще раз\n").red.bright
	  	comand = gets.chomp.downcase
		ResponseAnswer.check_comand(comand)

	  end
	  def order_from_menu
	  	Menu.header

	  end
	  def header
		    system("clear") || system("cls")
			puts Rainbow(File.read(PATH + "/../" + "/image/coffe_shop")).green.bright
			puts Rainbow(File.read(PATH + "/../" + "/image/menu")).green.blink
			puts Rainbow(File.read(PATH + "/../" + "/image/coffe_list")).bright.red
			puts "-"*100	
	  end


end
