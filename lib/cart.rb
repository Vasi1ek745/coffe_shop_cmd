class Cart
		attr_accessor :orders
		def initialize
			@order = {}
		end
		def order_all
			@order.each {|k,v| puts "#{k}----#{v}шт"}

		end
		def already_added?(name_order)
			@order.has_key?(name_order)
	 	end
	 	def check

	 	end
end
