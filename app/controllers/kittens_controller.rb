class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :update, :destroy]

  # GET /kittens
  def index
    @kittens = Kitten.all

    render json: @kittens
  end

  # GET /kittens/1
  def show
    render json: @kitten
  end

  # POST /kittens
  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      render json: @kitten, status: :created, location: @kitten
    else
      render json: @kitten.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kittens/1
  def update
    if @kitten.update(kitten_params)
      render json: @kitten
    else
      render json: @kitten.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kittens/1
  def destroy
    @kitten.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitten
      @kitten = Kitten.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kitten_params
      params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end
end
