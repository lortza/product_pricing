class Component < ApplicationRecord
  belongs_to :manufacturer
  has_many :prices

  def to_s
    name
  end

end
