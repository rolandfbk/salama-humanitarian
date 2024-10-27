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
    @person = Person.new(person_params)
    if @person.save
      redirect_to new_person_path, notice: '#{@person.name} added successfully.'
    else
      render :new
    end
  end

  def create_allocation
    @person = Person.find(params[:person_id])
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

  def person_params
    params.require(:person).permit(:name, :age, :category, :description)
  end
end
