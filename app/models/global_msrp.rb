class GlobalMsrp < ApplicationRecord

	def self.price
    # also defined separately in the application helper
		first.price
	end
end
