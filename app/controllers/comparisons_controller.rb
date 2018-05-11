class ComparisonsController < ApplicationController
  before_action :set_comparison, only: [:show, :update, :destroy]

  # GET /comparisons
  def index
    @comparisons = Comparison.all

    render json: @comparisons
  end

  # GET /comparisons/1
  def show
    render json: @comparison
  end

  # POST /comparisons
  def create
    pp params
    @comparison = Comparison.new(comparison_params)

    if @comparison.save
      render json: @comparison, status: :created, location: @comparison
    else
      render json: @comparison.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comparisons/1
  def update
    if @comparison.update(comparison_params)
      render json: @comparison
    else
      render json: @comparison.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comparisons/1
  def destroy
    @comparison.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comparison
    @comparison = Comparison.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def comparison_params
    params.require(:comparison).permit(:chosen, :unchosen, :client_info)
  end
end
