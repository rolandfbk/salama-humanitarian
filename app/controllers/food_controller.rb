class FoodController < ApplicationController
  def index
    @food = Food.all
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to new_food_path, notice: '#{@food.name} added successfully.'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def food_params
    params.require(:food).permit(:name, :quantity)
  end
end
