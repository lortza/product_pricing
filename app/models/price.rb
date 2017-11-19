class Price < ApplicationRecord
  belongs_to :component

  def total_cost
    shipping_each ? (cost_each + shipping_each) : cost_each
  end

  def cost_for_qty
    total_cost * qty
  end

end
