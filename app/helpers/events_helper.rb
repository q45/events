module EventsHelper

	def format_price(event)
		number_to_currency(event.price)
	end
end
