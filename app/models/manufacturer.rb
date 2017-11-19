class Manufacturer < ApplicationRecord
  has_many :components

  def to_s
    name
  end
end
