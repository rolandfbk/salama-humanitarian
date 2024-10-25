class Person < ApplicationRecord

  has_many :allocations
  has_many :foods, through: :allocations
  has_many :equipments, through: :allocations

  validates :name, :age, :category, presence: true
  validates :name, length: { minimum: 50 }
  validates :age, numericality: { only_integer: true }
  validates :category, inclusion: { in: %w(man woman teenager kid baby) }
end
