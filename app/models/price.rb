class Price < ApplicationRecord
  belongs_to :component

  def total_cost
    cost_each + shipping_each
  end

  def cost_for_qty
    total_cost * qty
  end

end
