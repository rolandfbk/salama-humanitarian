class Person < ApplicationRecord
  validates :name, :age, :category, presence: true
  validates :name, length: { minimum: 50 }
  validates :age, numericality: { only_integer: true }
  validates :category, inclusion: { in: %w(man woman teenager kid baby) }
end
