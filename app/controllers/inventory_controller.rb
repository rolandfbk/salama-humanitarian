class InventoryController < ApplicationController
  def index
    @people_count = Person.count
    @food_stock = Food.all
    @equipment_stock = Equipment.all
  end
end
