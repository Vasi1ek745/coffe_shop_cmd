require "terminal-table"

class Cart
	
	MENU_HASH = {"espresso"=>100,"greentea"=>100,"americano"=>100,"blacktea"=>100,
 			"cappuccino"=>100,"matcha"=>100,"irish"=>100,"juice"=>100,"latte"=>100,"sandwich"=>100,"flatwhite"=>100}
	attr_accessor :order_list
		def initialize
			@order_list = {}
		end
		def update(add_order)
			if add_order == {}
				@order_list = {}
			else
				order = add_order['name_order']
				quantity = add_order['quantity']
				if already_added?(order)
					@order_list[order] += quantity.to_i
				else 
					@order_list[order] = quantity.to_i
			
				end

			end 
		end
		def finish_sum
		   @order_list.to_a.reduce(0) {|sum, x| sum + MENU_HASH[x[0]]*x[1]}
		   

		end
		def already_added?(name_order)
			@order_list.has_key?(name_order)
	 	end
 	def cost(name)
 		MENU_HASH[name]
 	end
 	def check_name_order(name_order)
 		MENU_HASH.has_key?(name_order.downcase)
 	end
	def table_check
		
		rows = @order_list.to_a.reduce([]){|rows,x| rows << [x[0], cost(x[0]) , x[1], cost(x[0])*x[1]]}
		table = Terminal::Table.new :title => "Чек", :headings => ['Товар', 'Цена','Количество','Стоимость'], :rows => rows

	end
end
