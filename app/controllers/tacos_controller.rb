class TacosController < ApplicationController
  before_action :set_taco, only: [:show, :update, :destroy]

  # GET /tacos
  # GET /tacos.json
  def index
    @tacos = Taco.all

    render json: @tacos
  end

  # GET /tacos/1
  # GET /tacos/1.json
  def show
    render json: @taco
  end

  # POST /tacos
  # POST /tacos.json
  def create
    @taco = Taco.new(taco_params)

    if @taco.save
      render json: @taco, status: :created, location: @taco
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tacos/1
  # PATCH/PUT /tacos/1.json
  def update
    @taco = Taco.find(params[:id])

    if @taco.update(taco_params)
      head :no_content
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tacos/1
  # DELETE /tacos/1.json
  def destroy
    @taco.destroy

    head :no_content
  end

  private

    def set_taco
      @taco = Taco.find(params[:id])
    end

    def taco_params
      params.require(:taco).permit(:sauce, :meat, :vegetable)
    end
end
