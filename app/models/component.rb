class Component < ApplicationRecord
  belongs_to :manufacturer
  has_many :prices
end
