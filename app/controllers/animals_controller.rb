class AnimalsController < ApplicationController

  def index
    if params[:name]
      name = params[:name]
      @animals = Animal.search(name)
      json_response(@animals)
    else
      @animals = Animal.all
      json_response(@animals)
    end
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
       message: "The animal's profile has been updated successfully."
       }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      render status: 200, json: {
        message: "This animal has been deleted successfully."
      }
    end
  end

  def animal_params
    params.permit(:name, :creature, :gender, :born, :profile, :fav_food)
  end
end