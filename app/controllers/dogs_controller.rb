class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render :index
  end

  def show
    @dog = Dog.find_by(id: params["id"])
    render :show
  end

  def create
    if current_user
      @dog = Dog.create(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        user_id: current_user.id,
      )
      render :show
    else
      render json: { message: "Please log in to save your dog" }
    end
  end
end
