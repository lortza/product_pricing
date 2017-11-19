class Component < ApplicationRecord
  belongs_to :manufacturer
  has_many :prices
  has_many :component_products, dependent: :destroy
  has_many :products, through: :component_products

  def to_s
    name
  end

  def full_name
    name + " - " + manufacturer.to_s
  end

  def cost_for_qty(qty)
    price = prices.find_by_qty(qty)
    price ? price.cost_for_qty : prices.nearest(qty).cost_for_qty
  end

end
