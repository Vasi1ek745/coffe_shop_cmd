require "rainbow"


class Main


		def initialize(user='')
			@user = user	

		end


		def self.start
			system("clear") || system("cls")
			puts Rainbow(File.read("image/start_menu")).green.bright
			puts Rainbow(File.read("image/menu")).green.blink
			puts Rainbow(File.read("image/coffe_list")).bright.red
			 
			puts Rainbow("   Добрый день! Хотите кофе?\n").green.bright
		end

end
	



Main.start