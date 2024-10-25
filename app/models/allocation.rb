class Allocation < ApplicationRecord
  belongs_to :person
  belongs_to :food, optional: true
  belongs_to :equipment, optional: true
end
