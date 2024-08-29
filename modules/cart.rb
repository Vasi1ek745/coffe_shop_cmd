class Main
	attr_accessor :cart
	class Cart
		attr_accessor :order
		def initialize
			@order = {}
		end
		def order_all_with_money
			@order.each {|k,v| puts "#{k}----#{v}шт"}

		end

	end


end
