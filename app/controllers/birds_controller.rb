class BirdsController < ApplicationController

  def index
    render json: Bird.all, status: :ok
  end

  def show
    bird = Bird.find(params[:id])
    if bird
      render json: bird, status: :ok
    else
      render {error: "Bird not found"}, status: :not_found
    end
  end

end
