class ReportsController < ApplicationController
  def index
    # People counts by category
    @people_count = Person.group(:category).count

    # Food and equipment distribution counts
    @allocated_food_counts = Allocation.where.not(food_id: nil).group(:food_id).count
    @allocated_equipment_counts = Allocation.where.not(equipment_id: nil).group(:equipment_id).count

    # Remaining food and equipment stock
    @food_stock = Food.all
    @equipment_stock = Equipment.all
  end
end
