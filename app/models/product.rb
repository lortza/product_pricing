class Product < ApplicationRecord
  has_many :component_products, dependent: :destroy
  has_many :components, through: :component_products

  def unit_cost
    total_cost / qty
  end

  def total_cost
    prices = components.map do |c|
      c.cost_for_qty(qty)
    end
    prices.reduce(&:+)
  end

  def unit_profit
    total_profit / qty
  end

  def total_profit
    potential = msrp * qty
    potential - total_cost
  end

end
