module ApplicationHelper

	def format_price(movies)

			if movies.free?
				content_tag(:strong, "Free")
			else
				number_to_currency(movies.price, unit: "€")
			end
	end

end	
