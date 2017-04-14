class Api::V1::SnacksController < ApplicationController
  before_action :set_api_v1_snack, only: [:show, :update, :destroy]
  before_action :set_api_by_origin_v1_snack, only: [:getByOrigin]

  # GET /api/v1/snacks
  def index
    get_api_v1_snacks
    render json: {
      status: 200,
      message: "Success",
      data: get_api_v1_snacks
    }.to_json
  end

  # GET /api/v1/snacks/1
  def show
    @api_v1_snack = Snack.select(:id, :name, :description, :origin, :pict_url, :price).find(params[:id])
    if @api_v1_snack
      render json: {
        status: 200,
        message: "Success",
        data: @api_v1_snack
      }.to_json
    else
      render json: {
        status: 404,
        message: "Not Found"
      }.to_json
    end
  end

  # GET /api/v1/snacks/:origin
  def getByOrigin
    render json: {
      status: 200,
      message: "Success",
      data: @api_v1_snacks
    }.to_json
  end

  # POST /api/v1/snacks
  def create
    @api_v1_snack = Snack.new(api_v1_snack_params)

    if @api_v1_snack.save
      render json: {
        status: 200,
        message: "Success",
        data: @api_v1_snack
      }.to_json
      # location: [:api, :v1, @api_v1_snack]
    else
      render json: @api_v1_snack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/snacks/1
  def update
    if @api_v1_snack.update(api_v1_snack_params)
      render json: {
        status: 200,
        message: "Successfully update snack",
        data: @api_v1_snack
      }.to_json
    else
      render json: @api_v1_snack.errors, status: :unprocessable_entity
    end
  end

  # DELETE /controllers/1
  def destroy
    if @api_v1_snack.destroy
      render json: {
        status: 200,
        message: "Successfully deleted snack"
      }.to_json
    else
      render json: @api_v1_snack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/snacks/restore
  def restore
    Snack.destroy_all
    Snack.restore
    render json: {
      status: 200,
      message: "Success",
      data: get_api_v1_snacks
    }.to_json
  end

  private
    def get_api_v1_snacks
      @api_v1_snacks = Snack.select(:id, :name, :description, :origin, :pict_url, :price)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_snack
      @api_v1_snack = Snack.select(:id, :name, :description, :origin, :pict_url, :price).find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_api_by_origin_v1_snack
      @api_v1_snacks = Snack.select(:id, :name, :description, :origin, :pict_url, :price).where(origin: params[:origin])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_snack_params
      params.require(:snack).permit(:id, :name, :description, :origin, :pict_url, :price)
    end
end
