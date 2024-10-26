class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
  end

  def create

  end

  def create_allocation
    @person = Person.find(params[:id_person])
    @allocation = @person.allocations.build(allocation_params)

    if @allocation.save
      redirect_to @person, notice: 'Resources allocated successfully.'
    else
      render :show
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def allocation_params
    params.require(:allocation).permit(:food_id, :equipment_id)
  end
end
