module PricesHelper

  def display_currency(price)
    "$#{price.round(2)}"
  end
end
