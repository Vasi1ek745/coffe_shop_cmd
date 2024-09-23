class Menu
	attr_accessor :step, :continue
	PATH = File.dirname(__FILE__)
	def initialize
		@step = 'greetings'
		@continue = true
	end
	def chose_step(user_answer, order_list)

		case user_answer
		when 'greetings'
			greetings
		when 'help'
			help
		when 'cart'
			status(order_list)
		when 'clear'
			clear_cart
		when 'wrong_comand'
			wrong_comand
		when 'wrong name order'
			wrong_name	
		end
	end
	def status(order_list)
			header
	 		puts "Ваш заказ"
	 		order_list.each {|k,v| p "#{k} - #{v}шт"}
	 		puts "Еще что нибудь? " , 'введите finish что бы завершить'
	end


	def greetings
	  		header
	        puts Rainbow("   Добрый день! Хотите кофе?\n").green.bright
	        puts Rainbow("   Для заказа используйте order <название> <количество> # order espresso 2\n").green.bright
	        puts Rainbow("   help для помощи\n").green.bright
	      
    end

	def help
	  	header
       
	  	puts Rainbow("\n   Список основных команд\n").bright.green
		puts Rainbow(File.read(PATH + "/../" + "/image/base_comand")).bright
	 end

    def check_continue(answer)
      	@continue = false if answer == 'finish'
      
    end
    def finish(order_list, finish_sum, table_check)
   		header
    	puts table_check
    	puts "Спасибо за покупки с вас #{finish_sum}р"
    end

	  def wrong_comand
	  	header
	  	puts Rainbow("   Неправильная команда, используйте help\n").red.bright
	  	
	  end
	  def wrong_name
	  	header
	  	puts Rainbow("   Неправильно указано название или количество\n").red.bright
	  
	  end
	
	  def header
		    system("clear") || system("cls")
			puts Rainbow(File.read(PATH + "/../" + "/image/coffe_shop")).green.bright
			puts Rainbow(File.read(PATH + "/../" + "/image/menu")).green.blink
			puts Rainbow(File.read(PATH + "/../" + "/image/coffe_list")).bright.red
			puts "-"*100	
	  end


end
