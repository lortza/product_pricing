module PricesHelper

  def display_currency(price)
    price ? "$#{price.round(2)}" : "Shipping Required"
  end
end
