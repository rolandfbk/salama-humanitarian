class Food < ApplicationRecord
  has_many :allocations
  has_many :people, through: :allocations

  validates :name, :quantity, presence: true
  validates :name, length: { maximum: 100, minimum: 2 }
  validates :quantity, numericality: { only_integer: true }

  def low_stock?
    quantity < 10
  end
end
