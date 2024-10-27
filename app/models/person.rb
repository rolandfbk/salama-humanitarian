class Person < ApplicationRecord

  has_many :allocations
  has_many :foods, through: :allocations
  has_many :equipments, through: :allocations

  validates :name, :age, :category, presence: true
  validates :name, length: { maximum: 50, minimum: 2 }
  validates :age, numericality: { only_integer: true }
  validates :description, length: { maximum: 1000 }

  CATEGORIES = %w[man woman teenager_boy teenager_girl kid baby].freeze
  validates :category, inclusion: { in: CATEGORIES }
end
