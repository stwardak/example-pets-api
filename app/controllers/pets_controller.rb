class PetsController < ApplicationController
  def create

    if current_user
      @pet = Pet.create(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
      )
      render json: {message: "pet added successfully"}
    else
      render json: {message: "Please log in to add a pet"}
    end
  end
  
end